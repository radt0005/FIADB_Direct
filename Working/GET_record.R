# table_names <- "tree"
# schema <- "FS_FIADB"
# var_names <- "plt_cn"
# var_values <- c(10,20)

#var_values <- prev_plt_cn
# data_path = file.path("/media/rstudio/data/Rscripts/Working/")
print(paste("From Get_record data_path:",data_path))
source(file.path(data_path,"FIAdb_connect.R"))#Aakriti 01/13/2024
source(file.path(data_path,"getQuery.R"))#Aakriti 01/13/2024
#source("/media/rstudio/data/Rscripts/Working/FIAdb_connect.R")
#source("/media/rstudio/data/Rscripts/Working/getQuery.R")


GET_record <- function(TABLE_NAME, VAR_NAME, VAR_VALUES, SCHEMA = "FS_FIADB", dbname = "fiadb"){ #Aakriti 09/10/2024
  # check for existing connection and either print a warning or create a new con
  if (exists("con")) {warning("Warning! previous connection exists! Disconnecting...") 
  }else{
    con <- FIAdb_connect(dbname)
  }
  TABLE_NAME <- toupper(TABLE_NAME)
  VAR_NAME <- toupper(VAR_NAME)
  sql_query1 <- "SELECT * FROM &SCHEMA.&TABLE WHERE &TABLE.&VAR_NAME IN (&VAR_VALUES)"
  sql_query2 <- gsub("&SCHEMA", SCHEMA, sql_query1)
  sql_query3 <- gsub("&TABLE", TABLE_NAME, sql_query2)
  sql_query4 <- gsub("&VAR_NAME", VAR_NAME, sql_query3)
  if (length(VAR_VALUES) > 1){
    VAR_VALUES <- paste0( "'",VAR_VALUES,"'",collapse = ', ')
  }else {
    VAR_VALUES <- paste0( "'",VAR_VALUES,"'")}
  sql_query5 <- gsub("&VAR_VALUES", VAR_VALUES, sql_query4)
  result <- getQuery(sql_query5,con) #Aakriti 09/10/2024
  # check for existing connection and disconnect from it
  dbDisconnect(con ) #Aakriti 09/10/2024
  rm(con)  #Aakriti 09/10/2024
  return(result)  
}




