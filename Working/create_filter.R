#creating filter using create_filter function


# VAR_NAMES should be a vector of one or more attributes 
##  For example VAR_NAMES = c("owngrpcd","dia")
##             VAR_NAMES = "owngrpcd"

#if VAR_NAMES has only one attribute, VAR_VALUES can either be one or more vector 
## For example, VAR_VALUES = c(10,20,30,40)
##              VAR_VALUES = 10

#if VAR_NAMES has only one attribute, VAR_CONDS can be either one or more vector that corresponds to respective VAR_VALUES  i.e length(VAR_VALUES) = length(VAR_CONDS)
#For example if VAR_VALUES = c(10,20,30,40), VAR_CONDS = c("=", "=", "!=",">=")
##          if VAR_VALUES  = 10, VAR_CONDS = "="

#if VAR_NAMES has only one attribute, VAR_BOOLS can be either one or more vector of length "length(VAR_VALUES) - 1" 

#if VAR_NAMES has only one attribute and length(VAR_VALUES) = 1 then VAR_BOOLS = NA
##For example, if VAR_VALUES = c(10,20,30,40), VAR_BOOLS = c("or", "or", "or")
##               if VAR_VALUES = 10, VAR_BOOLS = NA


#if VAR_NAMES has more than one attribute, VAR_VALUES should be a list of length "length(VAR_NAMES)" with upper and/or lower limits or separate values for filters 
##if VAR_NAMES = c("owngrpcd", "dia"), VAR_VALUES = list(dia=c(15,25),owngrpcd=c(10,20,30)) 

#if VAR_NAMES has more than one attribute, VAR_CONDS  should be a list of length length(VAR_NAMES) 
##if VAR_NAMES = c("owngrpcd", "dia"), VAR_CONDS = list(dia=c(">=","<"),owngrpcd = c('=',"=","=")

#if VAR_NAMES has more than one attribute, VAR_BOOLS should be a list of length length(VAR_NAMES)
##if VAR_NAMES = c("owngrpcd", "dia"),VAR_BOOLS = list(dia="and",owngrpcd="or")

#data_path = file.path("/media/rstudio/data/Rscripts/Working/")
#Aakriti 01/13/2024
print(paste("From create_filter data_path:",data_path))
source(file.path(data_path,"FIAdb_connect.R"))#Aakriti 01/13/2024
source(file.path(data_path,"read_TABLE_VAR_REF.R"))#Aakriti 01/13/2024
#source("/media/rstudio/data/Rscripts/Working/FIAdb_connect.R")
#con <- FIAdb_connect("fiadb")
#source("/media/rstudio/data/Rscripts/Working/read_TABLE_VAR_REF.R")


create_filter <- function(VAR_NAMES, VAR_VALUES, VAR_CONDS, VAR_BOOLS = NA,dbname = "fiadb"){
  if (exists("con")) {warning("The connection already exists") #Aakriti 09/10/2024
  }else{
    con <- FIAdb_connect(dbname)}
  VAR_NAMES = toupper(VAR_NAMES)
  # length(VAR_NAMES)
  # todo: error trap for length(VAR_NAMES) == length(VAR_VALUES)
  # todo: error trap for length(VAR_NAMES) == length(VAR_CONDS)
  # todo: error trap for length(VAR_NAMES) == length(VAR_BOOLS)
  # todo: move VAR_NAMES_table inside of if/else brackets 
  VAR_NAMES_table = array(data=NA,dim=length(VAR_NAMES))
  if(length(VAR_NAMES) > 1){
    names(VAR_VALUES) <- VAR_NAMES
    names(VAR_CONDS) <- VAR_NAMES
    #names(VAR_BOOLS) <- VAR_NAMES
    for(x in 1:length(VAR_NAMES)){
      VAR_NAMES_table[x] <- 
        paste0(TABLE_VAR_REF$TABLE[TABLE_VAR_REF$VAR_NAME == VAR_NAMES[x]],
               '.',VAR_NAMES[x])
    }
    filter_script = array(data=NA,dim=length(VAR_NAMES))
    for(x in 1:length(VAR_NAMES)){
      #VAR_BOOLS[x] = toupper(VAR_BOOLS[x])
      filter_script[x] <- paste0("AND (",
                            paste(VAR_NAMES_table[x], 
                                  VAR_CONDS[[x]],
                                  VAR_VALUES[[x]],
                                  collapse=paste0(' ',VAR_BOOLS[[x]],' ')),')')
    }
    filter_script <- paste0(filter_script,collapse=' ')
    if ("NA" %in% strsplit(filter_script, " ")[[1]]) {
      stop('ERROR : VAR_BOOLS is missing values.')}
  }else{
    # VAR_CONDS = toupper(VAR_CONDS)
    # VAR_VALUES
    #VAR_BOOLS = toupper(VAR_BOOLS)
    VAR_NAMES_table = array(data=NA,dim=length(VAR_NAMES))
    for(x in 1:length(VAR_NAMES)){
      VAR_NAMES_table[x] <- 
        paste0(TABLE_VAR_REF$TABLE[TABLE_VAR_REF$VAR_NAME == VAR_NAMES[x]],
               '.',VAR_NAMES[x])
    }
    filter_script <- paste0("AND (",
                            paste(VAR_NAMES_table, 
                                  VAR_CONDS,
                                  VAR_VALUES,
                                  collapse=paste0(' ',VAR_BOOLS,' ')),')')
    if ("NA" %in% strsplit(filter_script, " ")[[1]]) {
      stop('ERROR : VAR_BOOLS is missing values.')}}
  dbDisconnect(con) #Aakriti 09/10/2024
  rm(con)  #Aakriti 09/10/2024
  return(filter_script)
}


