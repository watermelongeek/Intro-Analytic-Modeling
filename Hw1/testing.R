data <- read.table("credit_card_data-headers.txt", stringsAsFactors=FALSE, header=TRUE)
sample <- sample(1:nrow(data), floor(nrow(data)*0.6))
data.train <- data[sample,]
data.test <- data[-sample,]

model <- kknn(R1 ~ ., train=data.train, test=data.test kmax = 21)

ans <- predict(model,learning[,-5]) == learning[,5]
sum(ans)/length(ans)
predict(model,learning[,-5])
