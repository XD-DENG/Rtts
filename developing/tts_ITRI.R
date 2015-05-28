library(RCurl)

tts_ITRI <- function(content,
                     destfile=paste(getwd(),"r.wav",sep="/")){
  tmp_id <- tts_ITRI_getID(content)
  
  # need to insert a function to check if the convert is completed
  # here we check if the convert is completed. If not, wait for a while and check again
  while(tts_ITRI_getStatus(tmp_id)!="completed"){
    Sys.sleep(0.1)
  }
  
  
  tmp_url <- tts_ITRI_getURL(tmp_id)
  
  binary_file <- getURLContent(tmp_url)
  binary_file <- as.vector(binary_file)
  writeBin(binary_file, destfile)
  cat("The voice file is generated in:",destfile,"\n")
}