#download file from following URL into pwd
url <- "https://raw.githubusercontent.com/rafalab/dslabs/master/inst/extdata/murders.csv"
dest_file <- "murders.csv"
download.file(url, destfile = dest_file)