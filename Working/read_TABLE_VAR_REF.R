# temporary: create a DF with table and var names
# TABLE_VAR_REF <- data.frame(TABLE=c(replicate(3,"TREE"),
#                                     replicate(12,"COND"),
#                                     replicate(3, "PLOT")),
#                             VAR_NAME=c("SPCD","SPGRPCD", "DIA",
#                                        "PHYSCLCD", "SITECLCD", 
#                                        "STDORGCD", "FORTYPCD", 
#                                        "SLOPE", "STDAGE", "ADFORCD", 
#                                        "OWNCD", "OWNGRPCD", "STATECD", 
#                                        "COUNTYCD", "STDSZCD",
#                                        "ECOSUBCD","UNITCD","CN"))
library(RPostgreSQL)
library(readr)
library(data.table)
library(sqlparseR)
library(dplyr)
#source("/media/rstudio/data/Rscripts/Working/getQuery.R")
#data_path = file.path("/media/rstudio/data/Rscripts/Working/")
source(file.path(data_path,"FIAdb_connect.R"))#Aakriti 01/13/2024
#source("/home/rstudio/data/Rscripts/Working/FIAdb_connect.R")
if (exists("con")) {warning("The connection already exists") #Aakriti 09/10/2024
}else{
  con <- dbConnect(drv= RPostgres::Postgres(),
                            dbname= dbname,
                            port=5432,
                            user="postgres",
                            password="FIADB_Direct")
}
source(file.path(data_path,"getQuery.R"))#Aakriti 01/13/2024
#source("/media/rstudio/data/Rscripts/Working/getQuery.R")
#con <- FIAdb_connect("fiadb")
plot = "select * from fs_fiadb.plot where false;"
plot_var_names <- names(getQuery(plot,con))
TABLE_VAR_REF <- data.frame(TABLE="PLOT",VAR_NAME=plot_var_names)

cond = "select * from fs_fiadb.cond where false;"
cond_var_names <- names(getQuery(cond,con))
cond_var_names <- cond_var_names[!(cond_var_names %in% plot_var_names)]
TABLE_VAR_REF <- bind_rows(TABLE_VAR_REF,data.frame(TABLE="COND",VAR_NAME=cond_var_names))

tree = "select * from fs_fiadb.tree where false;"
tree_var_names <- names(getQuery(tree,con))
tree_var_names <- tree_var_names[!((tree_var_names %in% plot_var_names) |
                         (tree_var_names %in% cond_var_names))]
TABLE_VAR_REF <- bind_rows(TABLE_VAR_REF,data.frame(TABLE="TREE",VAR_NAME=tree_var_names))
dbDisconnect(con)  #Aakriti 09/10/2024
rm(con)  #Aakriti 09/10/2024
