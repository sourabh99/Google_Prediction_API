install.packages("RCurl")
install.packages("rjson")
install.packages("googlepredictionapi_0.1.tar.gz", type="source")
library(RCurl)
library(rjson)
library(googlepredictionapi)
##all required packages are installed.
## Now we have to train the model build on Google cloud platform.
tweetsentmodel <- PredictionApiTrain(data="gs://twitstore/training_data.csv")
## once model is trained we need to make predictions. By passing tweets.
## To do so we can use method predict and pass model name and tweet to be checked
predict(tweetsentmodel, "new android lollipop is having best features among all versions.")
##this will pass the tweet to model and get its sentiments.