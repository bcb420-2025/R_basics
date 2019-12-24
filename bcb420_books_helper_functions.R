githistory2table <- function(git_history){
  
  gitHistoryTable <- c()
  gitHistoryTable <- data.frame(matrix(ncol=4,nrow=length(git_history)), stringsAsFactors = FALSE)
  colnames(gitHistoryTable) <- c("Revision","Author", "Date", "Message")

  for(i in 1:length(git_history)){
    current_entry <- git_history[[i]]
    gitHistoryTable[i,1] <- substr(current_entry$sha,start = 1,stop = 7)
    gitHistoryTable[i,2] <- current_entry$author$name
    gitHistoryTable[i,3] <- format(as.POSIXct(current_entry$author$when$time, origin = "1970-01-01", tz = "GMT"),"%Y-%m-%d")
    gitHistoryTable[i,4] <-    gsub("[\r\n]", "", current_entry$message)
    
  }
  
  return(gitHistoryTable);
}