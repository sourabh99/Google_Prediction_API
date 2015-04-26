install.packages(twitteR)
install.packages(wordcloud)
install.packages(RColorBrewer)
install.packages(plyr)
install.packages(ggplot2)
install.packages(sentiment)
library(twitteR)
library(wordcloud)
library(RColorBrewer)
library(plyr)
library(ggplot2)
library(sentiment)
install.packages(httr)
library(httr)
oauth_endpoints("twitter")
## created twitter application using twitter account
## recorded api key, secret, access token and secret on authenticating application and used them below
api_key <- "API key recorded from twitter"
api_secret <- "Secret key recorded from twitter"
access_token <- "Access Token recorded from twitter"
access_token_secret <- "Access Token Secret key recorded from twitter"
setup_twitter_oauth(api_key,api_secret,access_token,access_token_secret)
traindata = searchTwitter("androidlollipop", n=100, lang="en")
##retrieved 100 tweets from twitter repated to android lollipop
training_data = sapply(traindata, function(x) x$getText())
training_data = gsub("(RT|via)((?:\\b\\W*@\\w+)+)", "", training_data)
##all retweeted entities are removed
training_data = gsub("@\\w+", "", training_data)
## all people names removed
training_data = gsub("http\\w+", "", training_data)
## all links removed