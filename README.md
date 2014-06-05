pbdR Windows Binary Files
=========================

For Windows users, you can install windows binary files of pbdR as shown in
the "install_pbdR_github.r" script. Inside an R session, type

library(RCurl)
github.dir <- "https://raw.githubusercontent.com/snoweye/pbdR_winbin/master/"
install <- paste(github.dir, "install_dp_pbdR.r", sep = "")
eval(parse(text = getURL(install, ssl.verifypeer = FALSE)))

to install suggested windows binary files.
