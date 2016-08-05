#Assignment1 for R programing 2nd code

complete <- function(directory, id = 1:332) {
  files_full <- list.files(directory, full.names = TRUE)
  dat <- data.frame()
  
  for (i in id) {
    moni_i <- read.csv(files_full[i])
    nobs <- sum(complete.cases(moni_i))
    tmp <- data.frame(i, nobs)
    dat <- rbind(dat, tmp)
  }
  
  colnames(dat) <- c("id", "nobs")
  dat
}


complete("/specdata/", 1)

complete("/specdata/", c(2, 4, 8, 10, 12))

complete("/specdata/", 30:25)

complete("/specdata/", 3)
