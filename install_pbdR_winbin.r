# library(devtools)
# source_url("https://raw.githubusercontent.com/snoweye/pbdR_winbin/master/install_pbdR_winbin.r")

dropbox.dir <- "http://raw.githubusercontent.com/snoweye/pbdR_winbin/master/"
win.bin <- c(
  "pbdMPI_0.2-4.zip",
  "pbdSLAP_0.1-9.zip",
  "SEXPtools_0.1-0.zip",
  "pbdBASE_0.3-0.zip",
  "pbdDMAT_0.3-0.zip",
  "pbdDEMO_0.2-1.zip"
)

tmp.dir <- tempdir()
for(i.win.bin in win.bin){
  bin.file <- paste(dropbox.dir, i.win.bin, sep = "")
  tmp.file <- paste(tmp.dir, i.win.bin, sep = "/")
  download.file(bin.file, tmp.file)
  install.packages(tmp.file, repos = NULL)
  unlink(tmp.file)
}
