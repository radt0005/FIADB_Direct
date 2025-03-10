require(RPostgreSQL)

getQuery <- function(query,con) {
  
  out <- dbGetQuery(con, query)
  
  names(out) <- toupper(names(out))
  
  return(out)
  
}
