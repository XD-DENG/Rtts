\name{tts_ITRI_getID}
\alias{tts_ITRI_getID}

\title{
Get request ID from ITRI TTS service via SOAP
}
\description{
This functions helps send the text which user would like to convert into speech to the SOAP server and return the assigned ID. The content can be English and Chinese (both traditional and simplified).
}
\usage{
tts_ITRI_getID(content)
}
\arguments{
  \item{content}{
The text user would like to convert into speech. The content can be English and Chinese (both traditional and simplified).
}
}
\details{
This function sends the content that the user would like to convert into speech to the ITRI TTS server via SOAP. An ID will be returned for further process.

This function will work as a part of function \code{tts_ITRI()}.
}
\value{
A string which contains the request ID assigned by the ITRI TTS server.
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
text <- "hello."
tts_ITRI_getID(text)
}