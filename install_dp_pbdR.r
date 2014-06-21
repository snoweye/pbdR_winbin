# library(RCurl)
# github.dir <- "https://raw.githubusercontent.com/snoweye/pbdR_winbin/master/"
# install <- paste(github.dir, "install_dp_pbdR.r", sep = "")
# eval(parse(text = getURL(install, ssl.verifypeer = FALSE)))

dropbox.dir <- "http://dl.dropboxusercontent.com/u/86659524/00_dropbox/"
win.bin <- c(
  "pbdMPI_0.2-5.zip",
  "pbdSLAP_0.1-9.zip",
  "SEXPtools_0.1-0.zip",
  "pbdBASE_0.3-0.zip",
  "pbdDMAT_0.3-0.zip",
  "pbdNCDF4_0.1-4.zip",
  "pbdDEMO_0.3-0.zip",
  "pbdPROF_0.2-4.zip",
  "pmclust_0.1-7.zip"
)

tmp.dir <- tempdir()
for(i.win.bin in win.bin){
  bin.file <- paste(dropbox.dir, i.win.bin, sep = "")
  tmp.file <- paste(tmp.dir, i.win.bin, sep = "/")
  download.file(bin.file, tmp.file)
  install.packages(tmp.file, repos = NULL)
  unlink(tmp.file)
}
