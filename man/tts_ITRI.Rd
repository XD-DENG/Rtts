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
tts_ITRI(content, speed, volume, speaker, destfile)
}
%- maybe also 'usage' for other objects documented here.
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
Please note that using this function may make the text contents you submitted released unpurposely. 

The text contents you submitted and corresponding voice files will be saved on the ITRI TTS server for 24 hours and others can access (as this package uses a default account).
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
text <- "Hello."

# Using default setting: speed=0, volume=100, speaker="Bruce".
# Using default value for destfile argument, 
# i.e. save the voice file in the working directory.
tts_ITRI(text)
}
