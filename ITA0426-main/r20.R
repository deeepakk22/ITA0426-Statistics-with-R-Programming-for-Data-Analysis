model <- lm(weight ~ Time + Diet, data=ChickWeight)
summary(model)

predicted <- predict(model)
error <- mean((ChickWeight$weight - predicted)^2)
print(error)
