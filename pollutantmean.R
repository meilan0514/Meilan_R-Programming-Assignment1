#Assignment1 for R programing 1st code

pollutantmean <- function(directory, pollutant, id = 1:332) {
  files_full <- list.files(directory, full.names = TRUE) 
  
  dat <- data.frame()
  
  for (i in id) {
    dat <- rbind(dat, read.csv(files_full[i]))
  }
  
  mean(dat[, pollutant], na.rm = TRUE)
}
pollutantmean("/Users/meilanchen/Desktop/2015 Fall/2_R_Programming/Homework/Assignment1/specdata/", "sulfate", 1:10)
pollutantmean("/Users/meilanchen/Desktop/2015 Fall/2_R_Programming/Homework/Assignment1/specdata/", "nitrate", 70:72)


