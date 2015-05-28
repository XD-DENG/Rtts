\name{tts_google}
\alias{tts_google}

\title{
Convert Text into Speech
}
\description{
Convert text into speech (voice files in .mp3 format) using the API offered by Google Translate (https://translate.google.com). Only English is supported currently.
}
\usage{
tts_google(content = "hello world", destfile = paste(getwd(),"r.mp3",sep="/"))
}

\arguments{
  \item{content}{
  The content to convert into speech. In string format.
}
  \item{destfile}{
  where to save the voice file generated and the voice file name. Default path is the current working path.
}
}
\details{
  Convert text into speech (voice files in .mp3 format) using the API offered by Google Translate. No extra software or platform support is required to use this function.
}
\note{
   [1] This function can only help convert restricted-length text (roughly nchar(text)<=100); [2] Try to use only comma and period for separation.
}
\references{
https://translate.google.com
}
\author{
  Xiaodong Deng
}
\examples{
  # Used default value for destfile argument, 
  # so the generated voice file will be saved in the working directory.
  tts_google("Hello.")
}
