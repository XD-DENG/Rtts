\name{tts_ITRI_getStatus}
\alias{tts_ITRI_getStatus}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Check the Text-To-Speech Convertion Progress Status
}
\description{
This function helps check if the text-to-speech convertion is completed on the ITRI TTS server. Only after the convertion is completed will the \code{tts_ITRI()} function proceed and finish the voice file downloading.
}
\usage{
tts_ITRI_getStatus(voice_ID)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{voice_ID}{
The ID obtained from ITRI TTS server via SOAP using \code{tts_ITRI_getID()} function. 
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
A string containg the informatin about the text-to-speech convertion progress on ITRI TTS server.
}
\references{
http://tts.itri.org.tw/development/web_service_api.php
}
\author{
Xiaodong Deng
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
text <- "Hello."
ID <- tts_ITRI_getID(text, speed=0, volume=100, speaker="Bruce")
tts_ITRI_getStatus(ID)
}
