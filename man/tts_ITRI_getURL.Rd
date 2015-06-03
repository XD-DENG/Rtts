\name{tts_ITRI_getURL}
\alias{tts_ITRI_getURL}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Get URL of Voice File from ITRI TTS service via SOAP
}
\description{
This function helps obtain the URL of voice file with the ID obtained using \code{tts_ITRI_getID()} function via SOAP.
}
\usage{
tts_ITRI_getURL(voice_ID)
}

\arguments{
  \item{voice_ID}{
The ID obtained from ITRI TTS server via SOAP using \code{tts_ITRI_getID()} function. 
}
}

\value{
A string containing the URL with which we can download the converted voice file.
}
\references{
http://tts.itri.org.tw/development/web_service_api.php
}
\author{
Xiaodong Deng
}

\examples{
text <- "Hello."
ID <- tts_ITRI_getID(text, speed=0, volume=100, speaker="Bruce")
voice_url <- tts_ITRI_getURL(ID)
}
