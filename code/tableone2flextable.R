tableone2flextable <- function(tableone){
  rows <- nrow(tableone)
  cols <- ncol(tableone)
  rowsXcols <- rows*cols
  colnames <- colnames(tableone)
  
  listoflists <- list()
  
  for (i in 1:cols){
    start <- (i*rows+1)-rows
    end <- i*rows
    
    listoflists[[i]] <- tableone[start:end]
  }
  
  dataframe <- as.data.frame(listoflists, col.names = colnames)
  flex <- flextable::flextable(dataframe)
  
  return(flex)
}
