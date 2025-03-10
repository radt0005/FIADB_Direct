# PLOT_obs_w_filter.R generates plot level estimates with domain filtering
library(RPostgreSQL)
library(readr)
library(data.table)
library(sqlparseR)
library(dplyr)
#data_path = file.path("/media/rstudio/data/Rscripts/Working/")
print(paste("From PLOT_obs_w_filter data_path:",data_path))
source(file.path(data_path,"PLOT_obs.R"))#Aakriti 01/13/2024
#source("/home/rstudio/data/Rscripts/Working/PLOT_obs.R")
PLOT_obs_w_filter <- function(EVAL_GRP, ATTRIBUTE_NBR, GRP_BY_ATTRIB="CN", SCHEMA = "FS_FIADB",VAR_NAMES = NA, VAR_VALUES = NA, VAR_CONDS = NA, VAR_BOOLS = NA,dbname = "fiadb"){ 
  #Aakriti 01/13/2025
  if (exists("con")) {warning("The connection already exists") 
  }else{
    con <- FIAdb_connect(dbname)
  }
  VAR_NAMES <- toupper(VAR_NAMES)
  GRP_BY_ATTRIB <- toupper(GRP_BY_ATTRIB)
  #adding VAR_NAMES IN GRP_BY_ATTRIB
    if (all(VAR_NAMES %in% GRP_BY_ATTRIB)){
    GRP_BY_ATTRIB <- GRP_BY_ATTRIB
  #   #this is added to remove NA in GRP_BY_ATTRIB
  # } else if (is.na(VAR_NAMES)){
  #   GRP_BY_ATTRIB <- GRP_BY_ATTRIB
  } 
  else{
    GRP_BY_ATTRIB <- c(GRP_BY_ATTRIB, VAR_NAMES)
  }
  #REMOVING THE VALUES THAT ARE REPEATED
  GRP_BY_ATTRIB <- unique(GRP_BY_ATTRIB)
  if(any(is.na(GRP_BY_ATTRIB))){
    GRP_BY_ATTRIB <- GRP_BY_ATTRIB[!is.na(GRP_BY_ATTRIB)] #removes NA if there is any 09/09/2024
  }
  FILTER_NONE <- ""
  if (any(is.na(c(VAR_NAMES, VAR_VALUES, VAR_CONDS)))){
    FILTER <- FILTER_NONE
  } else {
    #calling create_filter function to get sql code required for filtering
    FILTER <- create_filter(VAR_NAMES, VAR_VALUES, VAR_CONDS, VAR_BOOLS)
  }
  query_result <- PLOT_obs(EVAL_GRP,ATTRIBUTE_NBR,GRP_BY_ATTRIB, FILTER = FILTER)
  return(query_result)
}







