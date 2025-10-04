# This script scrapes data from the Pro Football Reference website, specifically the Seasons overview page that indicates the year, the winner, and the loser of the Super Bowl.
library(rvest)
library(dplyr)

# URL of the Pro Football Reference Seasons overview page
url <- "https://www.pro-football-reference.com/years/"
page <- read_html(url)
