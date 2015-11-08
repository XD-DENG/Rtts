tts_ITRI <- function(content, speed = 0, volume = 100, speaker = "Bruce",
                     destfile=tempfile("Rtts", fileext = ".wav")){
  
  # check-1: is the 'speaker' argument within supported speakers?
  if(!speaker %in% c("Bruce", "Theresa", "Angela", 
                    "MCHEN_Bruce", "MCHEN_Joddess",
                    "ENG_Bob", "ENG_Alice", "ENG_Tracy")){
    stop("The value for 'speaker' argument is invalid.\n")
  }
  
  # check-2: is the speed within permitted bounds?
  #if the speed argument meet the requirement
  if(speed > 10 | speed < -10){
    stop("The value for 'speed' argument is invalid.\n")
  }
  
  # check-3: is the volume within permitted bounds?
  if(volume > 100 | volume < 0){
    stop("The value for 'volumn' argument is invalid.\n")
  }
  
  # revision for v0.32
  # use try() function to figure out the "Timed out" issue
  try(tmp_id <- tts_ITRI_getID(content, speed, volume, speaker), silent = TRUE)
  # the part below is inserted to help handle "Timed out" issue
  if(is.null(tmp_id) == TRUE){
    return(NULL)
  }
  
  
  # the part below is further modified in v0.32
  # need to insert a function to check if the convert is completed
  # here we check if the convert is completed. If not, wait for a while and check again
  status <- "good luck"
  while(status!="completed"){
    Sys.sleep(0.1)
    try(status <- tts_ITRI_getStatus(tmp_id), silent = TRUE)
    if(status == "good luck"){
      stop("\n The server is responding slowly. Please try again later.")
    }
  }
  
  # modified for v0.32
  try(tmp_url <- tts_ITRI_getURL(tmp_id), silent = TRUE)
  if(("tmp_url" %in% ls()) == FALSE){
    stop("\n The server is responding slowly. Please try again later.")
  }
  
  binary_file <- getURLContent(tmp_url)
  binary_file <- as.vector(binary_file)
  writeBin(binary_file, destfile)
  return(destfile)  
}