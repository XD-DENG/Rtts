tts_ITRI_getID <- function(){
  
}


library(RCurl)

headerFields <- 
  c(Accept = "text/xml",
    Accept = "multipart/*",
    'Content-Type' = "text/xml; charset=utf-8",
    SOAPAction = "http://tts.itri.org.tw/TTSService/ConvertSimple")

body <- '<?xml version="1.0" encoding="utf-8"?>
  <soap:Envelope xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/">
    <soap:Body>
      <ConvertSimple xmlns="https://advertising.criteo.com/API/v201010">
      <accountID>test-for-r</accountID>
      <password>test1for1r</password>
      <TTStext>hi how are you</TTStext>
      </ConvertSimple>
    </soap:Body>
  </soap:Envelope>'

voice_ID_raw <- curlPerform(url = "http://tts.itri.org.tw/TTSService/Soap_1_3.php?wsdl",
            httpheader = headerFields,
            postfields = body,
            verbose = FALSE
)

