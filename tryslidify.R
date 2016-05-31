library(slidify)

library(devtools)
install_github('ramnathv/slidify', ref = github_pull(425))


#devtools::install_github("ramnathv/slidify@fix-encode")
author("自己紹介")
slidify("index.Rmd")
browseURL("index.html")
