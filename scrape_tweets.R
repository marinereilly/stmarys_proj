library(stringr)
library(twitteR)
library(purrr)
library(tidytext)
library(dplyr)
library(tidyr)
library(lubridate)
library(scales)
library(broom)
library(ggplot2)

consumerKey = "INSERT KEY HERE"
consumerSecret = "INSERT SECRET KEY HERE"
accessToken = "INSERT TOKEN HERE"
accessSecret = "INSERT SECRET TOKEN HERE"
options(httr_oauth_cache=TRUE)

setup_twitter_oauth(consumer_key = consumerKey,
                    consumer_secret = consumerSecret,
                    access_token = accessToken,
                    access_secret = accessSecret)

tweets<- userTimeline("somddispatch", n = 3200)
tweets_df <- tbl_df(map_df(tweets, as.data.frame))


