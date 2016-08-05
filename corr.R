#Assignment1 for R programing 3rd code


corr <- function(directory, threshold = 0) {
  files_full <- list.files(directory, full.names = TRUE)
  dat <- vector(mode = "numeric", length = 0)
  
  for (i in 1:length(files_full)) {
    moni_i <- read.csv(files_full[i])
    csum <- sum((!is.na(moni_i$sulfate)) & (!is.na(moni_i$nitrate)))
    if (csum > threshold) {
      tmp <- moni_i[which(!is.na(moni_i$sulfate)), ]
      submoni_i <- tmp[which(!is.na(tmp$nitrate)), ]
      dat <- c(dat, cor(submoni_i$sulfate, submoni_i$nitrate))
    }
  }
  
  dat
}


cr <- corr("/specdata/", 150)
head(cr)

summary(cr)

cr <- corr("/specdata/", 400)
head(cr)


summary(cr)

cr <- corr("/specdata/", 5000)
summary(cr)


length(cr)


cr <- corr("/specdata/")
summary(cr)

length(cr)



