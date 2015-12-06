# R package "Rtts"

[![CRAN Status Badge](http://www.r-pkg.org/badges/version/Rtts)](http://cran.r-project.org/web/packages/Rtts)
[![CRAN Downloads](http://cranlogs.r-pkg.org/badges/Rtts)](http://cran.rstudio.com/web/packages/Rtts/index.html)


This package is already published on CRAN [http://cran.r-project.org/web/packages/Rtts/](http://cran.r-project.org/web/packages/Rtts/)

You can install this package by running the command below in R console.
```{r}
install.packages("Rtts")
```

##Objective
Convert text into speech (voice file in .mp3 or .wav format) with API offered by ITRI TTS (http://tts.itri.org.tw).
使用ITRI TTS提供的API进行“文本->语音”转换。

One main function is developed based on this API, tts_ITRI(). tts_ITRI() supports English and Chinese (both traditional and simplified), and users can specify speaker, speed and volume.
基于该API，该package提供一个主要函数，tts_ITRI()。该函数支持英语与中文（简体及繁体）的“文本->语音”转换；另外，用户也可设定语音中说话者的腔调，语速以及音量。


##Bug Reporting & Suggestion Offering
If you find any bugs in this package or have any suggestions, please feel free to contact me by reporting issue on Github or drop me an email at xd_deng@hotmail.com  
