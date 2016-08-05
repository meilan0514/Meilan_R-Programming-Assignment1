#Assignment1 for R programing 1st code

pollutantmean <- function(directory, pollutant, id = 1:332) {
  files_full <- list.files(directory, full.names = TRUE) 
  
  dat <- data.frame()
  
  for (i in id) {
    dat <- rbind(dat, read.csv(files_full[i]))
  }
  
  mean(dat[, pollutant], na.rm = TRUE)
}
pollutantmean("/specdata/", "sulfate", 1:10)
pollutantmean("/specdata/", "nitrate", 70:72)


