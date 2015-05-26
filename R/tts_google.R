tts_google <- function(content="hello world",
                              destfile=paste(getwd(),"r.mp3",sep="/")){
  content_sparse <- strsplit(content,split = " ")[[1]]

  query_content <- content_sparse[1]
  for(i in 2:length(content_sparse)){
    query_content <- paste(query_content,content_sparse[i],sep="%20")
  }

  query_head <- "http://translate.google.com/translate_tts?tl=en&q="

  query <- paste(query_head,query_content,sep="")

  binary_file <- getURLContent(query)
  binary_file <- as.vector(binary_file)
  writeBin(binary_file, destfile)
  cat("The voice file is generated in:",destfile,"\n")

}
