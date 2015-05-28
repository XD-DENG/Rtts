tts_ITRI <- function(content, 
                     speed=0,
                     volume=100,
                     speaker="Bruce",
                     destfile=paste(getwd(),"r.wav",sep="/")){
  
    #   the requirements for arguments
    #   輸入參數：
    #   Account(String)–輸入您申請的帳號
    #   Password(String)–輸入您申請的密碼
    #   TTSText(String)–輸入欲合成的TTS文字
    #   TTSSpeaker(String)–可選擇語者(參考表三)
    #   Volume(Integer)–其音量大小可調整範圍為0~100
    #   Speed(Integer)–其語音速度可調整範圍為-10~10
    #   OutputType(String) –輸入聲音輸出之格式(wav、flv)
  
  # check-1:
  #if the speaker argument meet the requirement
  if(!speaker %in% c("Bruce", "Theresa", "Angela", 
                    "MCHEN_Bruce", "MCHEN_Joddess",
                    "ENG_Bob", "ENG_Alice", "ENG_Tracy",
                    "TW_LIT_AKoan","TW_SPK_AKoan")){
    cat("The value for 'speaker' argument is invalid.")
    return()
  }
      #     TTSSpeaker	explain
      #   Bruce	中英切換男生語音(default)
      #   Theresa	中英切換女生語音
      #   Angela	中英切換小女孩語音
      #   MCHEN_Bruce	中英統合男生語音
      #   MCHEN_Joddess	中英統合女生語音
      #   ENG_Bob	英文男生語音
      #   ENG_Alice	英文女生語音
      #   ENG_Tracy	英文小男孩語音
      #   TW_LIT_AKoan	台語女生語音(文讀台)
      #   TW_SPK_AKoan	台語女生語音(白話台)
  
  
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