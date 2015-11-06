\name{tts_google}
\alias{tts_google}

\title{
Convert Text into Speech
}
\description{
Please note that this function is deprecated and requests will be fulfilled with function "tts_ITRI".
}
\usage{
tts_google(content, destfile = tempfile("Rtts", fileext = ".mp3"))
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
\author{
  Xiaodong Deng
}
\examples{
  # Used default value for destfile argument, 
  # so the generated voice file will be saved in the working directory.
  tts_google("Hello.")
}
