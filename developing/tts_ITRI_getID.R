library(RCurl)

tts_ITRI_getID <- function(content){
  
  headerFields <- 
    c(Accept = "text/xml",
      Accept = "multipart/*",
      'Content-Type' = "text/xml; charset=utf-8",
      SOAPAction = "http://tts.itri.org.tw/TTSService/ConvertSimple")
  
  body_head <- '<?xml version="1.0" encoding="utf-8"?>
  <soap:Envelope xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/">
    <soap:Body>
      <ConvertSimple xmlns="https://advertising.criteo.com/API/v201010">
      <accountID>test-for-r</accountID>
      <password>test1for1r</password>
      <TTStext>'
  body_tail <- '</TTStext>
      </ConvertSimple>
    </soap:Body>
  </soap:Envelope>'
  
  body <- paste(body_head, content, body_tail, sep="")
  
  # we want the actual body of the response from the web server.
  # To get this, we provide function basicTextGatherer() to collect the text.
  reader =  basicTextGatherer()  
  curlPerform(url = "http://tts.itri.org.tw/TTSService/Soap_1_3.php?wsdl",
              httpheader = headerFields,
              postfields = body,
              verbose = FALSE,
              writefunction = reader$update
  )
  voice_ID_raw <- reader$value()
  voice_ID <- strsplit(strsplit(strsplit(voice_ID_raw, split="</Result>")[[1]][1], split = 'string\">')[[1]][2], split=";")[[1]][3]
  return(voice_ID)
}







