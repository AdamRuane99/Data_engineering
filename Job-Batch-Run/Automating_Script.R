dir <- "C:/Users/Adam/Desktop/R Task Auto"
setwd(dir)


library(quantmod)

stocks <- c('AAPL','AMD','TSLA', 'NIO')

cat("Now Running Your Automated Task ..\n")
#data prep
market_data <- c()
for (i in stocks){
  
  #grabs ticker data from yahoo finance
  stock_data <- getSymbols(i,src='yahoo', from = "2021-01-01",
                           auto.assign = FALSE) 
  
  # rename columns for consistent plotting
  # getSymbols default names are hard to work with, as they
  # assign col names based on ticker!
  column_names <- c('open', 'high', 'low', 'close', 'vol', 'adjusted')
  colnames(stock_data) <- column_names
  
  
  
  df <- data.frame(Date=index(stock_data),coredata(stock_data))
  df$ticker <- paste(i)
  
  market_data <- rbind(market_data,df)
}
cat("Now writing Data ..\n")

write.zoo(df, file=paste0(dir,"Tesla.csv"), sep = ',')

cat("Done../n")
 