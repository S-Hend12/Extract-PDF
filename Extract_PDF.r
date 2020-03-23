library(pdftools)

print("Script Starting")

rm(list = ls())

# directory paths
Desktop <- file.path(Sys.getenv("USERPROFILE"),"Desktop")
subDir <- "PDF_Exports"

# set current working directory to save files to folder
set_directory_paths <- function() {
  setwd(Desktop)
  ifelse(!dir.exists(subDir), dir.create(subDir), "Export directory already exists")
  setwd(file.path(Desktop, subDir))
  print(paste0("Current Working Directory is ", getwd()))
}

set_directory_paths()

pdf_file <- "http://central.bac-lac.gc.ca/.item/?id=1992-IAAR-RAAI&op=pdf&app=indianaffairs"

text <- pdf_text(pdf_file)

cat(text, file = "1992.txt")

print("Script Completed")
