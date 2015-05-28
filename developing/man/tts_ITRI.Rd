\name{tts_ITRI}
\alias{tts_ITRI}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Convert Text into Speech Using ITRI TTS service via SOAP
}
\description{
Using the API offered by ITRI TTS (http://tts.itri.org.tw/), this function helps convert text into speech. After sending the text, corresponding voice file will be downloaded and saved.

English and Chinese (both tradition and simplified) are supported.
}
\usage{
tts_ITRI(content, destfile)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{content}{
The text user would like to convert into speech. The content can be English and Chinese (both traditional and simplified).
}
  \item{destfile}{
Where to save the generated voice file. It should contain both the path and the full file name.
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
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
# using default value for destfile argument, i.e. save the voice file in the working directory.
tts_ITRI(text)
}
