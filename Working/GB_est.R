# GB_est.R generates FIA Green Book estimates with grouping 
library(RPostgreSQL)
library(readr)
library(data.table)
library(sqlparseR)
library(dplyr)
#data_path = file.path("/media/rstudio/data/Rscripts/Working/")
print(paste("From GB_est data_path:",data_path))
source(file.path(data_path,"FIAdb_connect.R"))#Aakriti 01/13/2024
source(file.path(data_path,"create_filter.R"))#Aakriti 01/13/2024
#' Green Book estimate
#' 
#' @param EVAL_GRP FIA evaluation group integer SSYYYY SS = 2-digit state FIPS code; YYYY = evaluation year.
#' @param ATTRIBUTE_NBR Attribute number, integer.
#' @param GRP_BY_ATTRIB "Group by" attrributes, character. One or more FIADB variables.
#' @param SCHEMA Database schema name, character. Must match postgreSQL database
#' @returns A data frame.
#' @examples
#' GB_est(102019,2,c("STATECD","COUNTYCD"))
GB_est <- function(EVAL_GRP, ATTRIBUTE_NBR, GRP_BY_ATTRIB ="STATECD",FILTER = NA, 
                   JOINS = NA, SCHEMA = "FS_FIADB",dbname = "fiadb"){   #Aakriti 09/10/2024
  if (exists("con")) {warning("The connection already exists") 
  }else{
    con <- FIAdb_connect(dbname)
  }
  # make sure all group by attributes are in all CAPS
  GRP_BY_ATTRIB = toupper(GRP_BY_ATTRIB)
  #to add STATECD as default 
  if (all(c("STATECD") %in% GRP_BY_ATTRIB)){
    GRP_BY_ATTRIB <- GRP_BY_ATTRIB
  } else {
    GRP_BY_ATTRIB <- c(GRP_BY_ATTRIB,"STATECD")
  }
  # read REF_POP_ATRIBUTE FIA reference table (contains SQL code)
  RPA_query <- "SELECT * FROM FS_FIADB.REF_POP_ATTRIBUTE;"
  REF_POP_ATTRIBUTE <- getQuery(RPA_query,con)
  valid_queries <- REF_POP_ATTRIBUTE$ATTRIBUTE_NBR[which(!is.na(REF_POP_ATTRIBUTE$SQL_QUERY))]
  query.exists <- ATTRIBUTE_NBR %in% valid_queries
  STATECD.in.GRP_BY_ATTRIB = any(GRP_BY_ATTRIB %in% "STATECD")
  FORTYPCD.in.GRP_BY_ATTRIB = any(GRP_BY_ATTRIB %in% "FORTYPCD")
  COUNTYCD.in.GRP_BY_ATTRIB = any(GRP_BY_ATTRIB %in% "COUNTYCD")
  OWNGRPCD.in.GRP_BY_ATTRIB = any(GRP_BY_ATTRIB %in% "OWNGRPCD")
  if(!query.exists){
    msg = paste0("Attribute number (ATTRIBUTE_NBR = ",ATTRIBUTE_NBR,") Does not exist!\n",
                 "Check attribute description!")
    stop(msg)
  }
  # Must check the EVAL_TYP before building the query
  # possible values: "EXPVOL","EXPCURR","EXPREMV","EXPDWM","EXPCHNG","EXPALL","EXPGROW","EXPMORT"
  eval_typ = REF_POP_ATTRIBUTE$EVAL_TYP[REF_POP_ATTRIBUTE$ATTRIBUTE_NBR == ATTRIBUTE_NBR]
  #EXCUR = REF_POP_ATRIBUTE$ATTRIBUTE_NBR[REF_POP_ATRIBUTE$EVAL_TYP == 'EXPCURR']
  #EXVOL = REF_POP_ATRIBUTE$ATTRIBUTE_NBR[REF_POP_ATRIBUTE$EVAL_TYP == 'EXPVOL']
  #is.expvol = eval_typ == "EXPVOL"
  #is.expcurr = eval_typ == "EXPCURR"
  # could add more eval_typ options here
  # FIADB REF_POP_ATTRIBUTE SQL modifiers
  JOIN_TREE <- "JOIN &FIADB_SCHEMA.TREE TREE ON TREE.PLT_CN = COND.PLT_CN AND TREE.CONDID = COND.CONDID)"
  JOIN_SEEDLING <- "JOIN &FIADB_SCHEMA.SEEDLING SEEDLING ON (SEEDLING.PLT_CN = COND.PLT_CN AND SEEDLING.CONDID = COND.CONDID)"
  #this is used when there is no any JOINS
  JOIN_NONE <- ''
  #checking if there is any JOINS
  if (is.na(JOINS)){
    JOINS <- JOIN_NONE
  } else {
    JOINS <- JOINS
  }
  #this is used when there is no any filter
  FILTER_NONE <- ''
  #checking if there is any filter
  if (is.na(FILTER)){
    FILTER <- FILTER_NONE
  } else {
    FILTER <- FILTER
  }
  #THIS IS ALWAYS SAME (THIS IS DONE TO CHANGE FILTER TO FILTERS IN THE BASE SQL SCRIPT)
  FILTERS = "filters"
  GRP_BY_ATTRIB = toupper(GRP_BY_ATTRIB)
  # format GRP_BY_ATTRIB for substituting in SQL
  # example for GRP_BY_ATTRIB = c("STATECD","COUNTYCD")
  ### part 1 should be formatted as:
  ### "plot.statecd statecd, plot.countycd countycd"
  # part 1 (GRP_BY_ATTRIB_PT1) includes aliases
  GRP_BY_ATTRIB_PT1 = array(data=NA,dim=length(GRP_BY_ATTRIB))
  for(x in 1:length(GRP_BY_ATTRIB)){
    GRP_BY_ATTRIB_PT1[x] <- 
      paste0(TABLE_VAR_REF$TABLE[TABLE_VAR_REF$VAR_NAME == GRP_BY_ATTRIB[x]],
             '.',GRP_BY_ATTRIB[x], " ",GRP_BY_ATTRIB[x])
  }
  GRP_BY_ATTRIB_PT1 <- paste0(GRP_BY_ATTRIB_PT1,collapse=', ')
  GRP_BY_ATTRIB_PT2 = array(data=NA,dim=length(GRP_BY_ATTRIB))
  for(x in 1:length(GRP_BY_ATTRIB)){
    GRP_BY_ATTRIB_PT2[x] <- 
      paste0(TABLE_VAR_REF$TABLE[TABLE_VAR_REF$VAR_NAME == GRP_BY_ATTRIB[x]],
             '.',GRP_BY_ATTRIB[x])
  }
  GRP_BY_ATTRIB_PT2 <- paste0(GRP_BY_ATTRIB_PT2,collapse=', ')
  GRP_BY_ATTRIB_PT3 = array(data=NA,dim=length(GRP_BY_ATTRIB))
  for(x in 1:length(GRP_BY_ATTRIB)){
    GRP_BY_ATTRIB_PT3[x] <- 
      paste0(GRP_BY_ATTRIB[x])
  }
  GRP_BY_ATTRIB_PT3 <- paste0(GRP_BY_ATTRIB_PT3,collapse=', ')
  # load the base query from REF_POP_ATTRIBUTE
  SQL_QUERY_SE_BASE <- REF_POP_ATTRIBUTE$SQL_QUERY_SE[REF_POP_ATTRIBUTE$ATTRIBUTE_NBR == ATTRIBUTE_NBR]
  SQL_QUERY_SE_BASE = toupper(SQL_QUERY_SE_BASE)
  #line XXX to line XXX must be run in order
  #sub function replace the first value only
  SQL_QUERY_SE_PART1<- sub('&GRP_BY_ATTRIB GRP_BY_ATTRIB',GRP_BY_ATTRIB_PT1, SQL_QUERY_SE_BASE)
  ##this is done only when we need estimation by plt_cn
  ##SQL_QUERY_SE_PLTCN <- sub('plot.cn plt_cn,', '', SQL_QUERY_SE_PART1)
  ##REPLACE SQL_QUERY_SE_PART1 to SQL_QUERY_SE_PLTCN if we are doing estimation by 
  ## plt_cn
  SQL_QUERY_SE_PART2 <- gsub(pattern = '&GRP_BY_ATTRIB',
                             replacement = GRP_BY_ATTRIB_PT2,
                             x = SQL_QUERY_SE_PART1)
  SQL_QUERY_SE_PART3 <- gsub(pattern = "COALESCE\\(CAST\\(GRP_BY_ATTRIB AS VARCHAR\\(4000\\)\\), 'NOT AVAILABLE'\\)",
                             replacement = "GRP_BY_ATTRIB",
                             x = SQL_QUERY_SE_PART2)
  SQL_QUERY_SE_PART4 <- gsub(pattern = 'GRP_BY_ATTRIB',
                             replacement = GRP_BY_ATTRIB_PT3,
                             x = SQL_QUERY_SE_PART3)
  SQL_QUERY_SE_PART5 <- gsub("&FILTER",FILTER,SQL_QUERY_SE_PART4)
  SQL_QUERY_SE_PART6 <- gsub("&JOINS",JOINS,SQL_QUERY_SE_PART5)
  SQL_QUERY_SE_PART7 <- gsub("FILTER",FILTERS,SQL_QUERY_SE_PART6)
  SQL_QUERY_SE_PART8 <- gsub("&FIADB_SCHEMA",SCHEMA,SQL_QUERY_SE_PART7)
  SQL_QUERY_SE_PART9 <- gsub("&EVAL_GRP",EVAL_GRP,SQL_QUERY_SE_PART8)
  queryResults <- getQuery(SQL_QUERY_SE_PART9,con)
  names(queryResults)[which(names(queryResults)=="GROUP_BY_FIELD")] <- GRP_BY_ATTRIB[length(GRP_BY_ATTRIB)]
  #source('/media/rstudio/data/Rscripts/In_progress/ADD_GRP_BY_ATTRIB_NAMES.R')
  #getting the state code and their names from survey table (SURVEY)
  # if(STATECD.in.GRP_BY_ATTRIB){
  #   Survey_table <- "SELECT DISTINCT SURVEY.STATECD, SURVEY.STATENM  FROM FS_FIADB.SURVEY"
  #   STATE_NAME <- getQuery(Survey_table,con)
  #   queryResults <- left_join(queryResults, STATE_NAME)
  # }
  #getting the forest type names from reference forest type table (REF_FOREST_TYPE)
  if(FORTYPCD.in.GRP_BY_ATTRIB){
    RFT <- "SELECT RFT.VALUE AS FORTYPCD, RFT.MEANING AS FOREST_TYPE_NAME, RFT.TYPGRPCD FROM FS_FIADB.REF_FOREST_TYPE RFT"
    FOREST_TYPE <- getQuery(RFT,con)
    queryResults <- left_join(queryResults, FOREST_TYPE) #, join_by("FORTYPCD" == "FORTYPCD"))
  }
  #getting the county code and their names from county table ()
  if(COUNTYCD.in.GRP_BY_ATTRIB){
    RCT <- "SELECT COUNTY.COUNTYCD AS COUNTYCD, COUNTY.COUNTYNM AS COUNTY_NAME,COUNTY.STATECD FROM FS_FIADB.COUNTY"
    COUNTY <- getQuery(RCT,con)
    queryResults <- left_join(queryResults, COUNTY)
  }
  #getting the ownergroup code and their names from reference ownergroup code table(REF_OWNGRPCD)
  if(OWNGRPCD.in.GRP_BY_ATTRIB){
    ROT <- "SELECT ROT.OWNGRPCD, ROT.MEANING AS OWNGRPCD_NAME FROM FS_FIADB.REF_OWNGRPCD ROT"
    OWNERGRP <- getQuery(ROT,con)
    queryResults <- left_join(queryResults, OWNERGRP)#, join_by("OWNGRPCD" == "OWNGRPCD"))
  }
  dbDisconnect(con ) #Aakriti 09/10/2024
  rm(con) #Aakriti 09/10/2024
  return(queryResults)
}





