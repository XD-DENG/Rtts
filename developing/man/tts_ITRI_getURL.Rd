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
A string containing the URL with which we can download the converted voice file.
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
ID <- tts_ITRI_getID(text)
voice_url <- tts_ITRI_getURL(ID)
}
