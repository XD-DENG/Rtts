\name{tts_ITRI_getID}
\alias{tts_ITRI_getID}

\title{
Get request ID from ITRI TTS service via SOAP
}
\description{
This functions helps send the text which user would like to convert into speech to the SOAP server and return the assigned ID. The content can be English and Chinese (both traditional and simplified).
}
\usage{
tts_ITRI_getID(content, speed, volume, speaker)
}
\arguments{
  \item{content}{
The text user would like to convert into speech. The content can be English and Chinese (both traditional and simplified).
}
  \item{speed}{
The speed of the speaker in the voice file generated. The range is -10 to 10, in numerical type.
}
  \item{volume}{
  The volume of the speaker in the voice file generated. The range is 0 to 100, in numerical type.
}
  \item{speaker}{
Select the speaker. The applicable options include:

[1] English & Chinese: "Bruce", "Theresa", "Angela", "MCHEN_Bruce", "MCHEN_Joddess"; 

[2] Only English: "ENG_Bob", "ENG_Alice", "ENG_Tracy".

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

# Using default setting: speed=0, volume=100, speaker="Bruce".
tts_ITRI_getID(text, speed=0, volume=100, speaker="Bruce")
}