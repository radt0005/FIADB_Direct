# FIAdb_connect creates connection to the database
require(RPostgreSQL)

FIAdb_connect <- function(input_dbname="fiadb"){
  # loads the PostgreSQL driver
  drv <- dbDriver("PostgreSQL")
  
  con <- DBI::dbConnect(drv,
                        dbname=input_dbname)
  
  if (!exists("con")) {
    
    # loads the PostgreSQL driver
    drv <- dbDriver("PostgreSQL")
    
    # creates a connection to the postgres database
    # note that "con" will be used later in each connection to the database
    con <- dbConnect(drv,
                     dbname= "testdb",
                     host= "localhost",
                     port= 5433,
                     user= "postgres",
                     password= rstudioapi::askForPassword()) 
  }
  con
}
