tts_ITRI <- function(content, 
                     speed=0,
                     volume=100,
                     speaker="Bruce",
                     destfile=paste(getwd(),"r.wav",sep="/")){
  
  # check-1:
  #if the speaker argument meet the requirement
  if(!speaker %in% c("Bruce", "Theresa", "Angela", 
                    "MCHEN_Bruce", "MCHEN_Joddess",
                    "ENG_Bob", "ENG_Alice", "ENG_Tracy")){
    cat("The value for 'speaker' argument is invalid.")
    return()
  }
  
  # check-2:
  #if the speed argument meet the requirement
  if(speed > 10 | speed < -10){
    cat("The value for 'speed' argument is invalid.")
    return()
  }
  
  # check-3:
  #if the volume argument meet the requirement
  if(volume > 100 | volume < 0){
    cat("The value for 'volumn' argument is invalid.")
    return()
  }
  
  
  tmp_id <- tts_ITRI_getID(content, speed, volume, speaker)
  
  
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