FanScout
================
Noah Nordsiek
2021-04-26

A package using Twitter API “Rtweet” by measuring how active certain
Twitter acounts are based on a key word from an MLB team’s account.

## Install

Install from GitHub with the following code:

``` r
if (!requireNamespace("devtools", quietly = TRUE)) {
  install.packages("devtools")
}
devtools::install_github("noahnordsiek/FanScout")
```

This package uses the Twitter API Rtweet to search tweets to obtain
data. Rtweet is a package that allows a user to stream tweets from
Twitter. You can set the amount of tweets that you want to stream but
FanScout automatically streams 200 tweets as its default so that you do
not hit the tweet streaming limit.Once data is obtained and sorted
through, it will be plotted on a graph to show a complete data
visualization.

## Usage

There is only one function currently available for FanScout.

To use the function:

Next, the fun begins with <code>FanScout</code>.

Its first argument takes any Twitter query, complete with boolean
operators if desired, surrounded by quotation marks.

The next argument is the language that the tweet is made from. For this
specific function, it is “en” for English.

The third argument determines where the tweet will be sent from. This
can vary from the web, to iPhone or Android. This lets us see where the
majority of the tweets are being sent from.

``` r
## load FanScout
library(FanScout)

## Enter search term in quotations
FanScout("@team")

## Result is a graph with custom variables


This process takes 200 tweets related to the desired search term and will filter
the search based on interaction count, User ID, and source based on variables
chosen.

In order to get different results for the same search term, lets say its "team",
you would need to use FanScout around 5-10 minutes later so that more tweets can
be streamed from twitter that are not the exact same as the previous pool of 
tweets.
```
