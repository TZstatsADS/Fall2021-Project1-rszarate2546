Please follow the next steps:

1) Clean all files and data:
rm(list=ls())

2) Set memory size at least at 200000: 
memory.limit(size = 200000)

3) Install the following packages:
if (!require("Rcpp")) install.packages("Rcpp")
if (!require("knitr")) install.packages("knitr")
if (!require("dplyr")) install.packages("dplyr")
if (!require("tidyr")) install.packages("tidyr")
if (!require("wordcloud")) install.packages("wordcloud")
if (!require("NLP")) install.packages("NLP")
if (!require("RColorBrewer")) install.packages("RColorBrewer")
if (!require("tm")) install.packages("tm")
if (!require("pacman")) install.packages("pacman")
if (!require("ggplot2")) install.packages("ggplot2")
pacman::p_load(pacman, party, psych, rio, tidyverse)


***My project is the file Project.Rmd (it takes around 20 minutes to run)
***See also pdf version (Project.knit.pdf)

Thanks!
