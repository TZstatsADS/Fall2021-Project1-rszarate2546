---
output: html_document
editor_options: 
  chunk_output_type: console
---
# God, women, and emotions: How present are referenced in the most prominent schools of philosophy?

### *Rodrigo Zarate, Applied Data Science class (Fall2021), Columbia University*

## Introduction

Have you ever wondered how present God's concept is in primary texts in the history of philosophy? In what schools of philosophy are more recurrent references to God? What about the presence of words referencing women? What are the schools of philosophy that most recurrent mention words describing women? How is the balance between men's and women's words? How is the balance of words referencing logic and emotions? A unique and fascinating data set allowed us to explore the great
texts in the history of philosophy.

The **Philosophy Data Project** (see <http://philosophydata.com/index.html>) is a data science project that explores the history of philosophy through the primary schools of thought. This fascinating data set allows us a data-driven exploration of philosophical
texts.

## Context

The dataset contains 13 schools of philosophy which give a broad overview of different ideas about the world, representing more or less the entire history of philosophy.

\#\# school of philosophy \#\#

```{r, include=FALSE} 
memory.limit(size = 100000)

# Install required packages if needed ######################

update.packages("Rcpp")
install.packages("Rcpp")
require(Rcpp)
if (!require("dplyr")) install.packages("dplyr")
if (!require("tidyr")) install.packages("tidyr")
if (!require("wordcloud")) install.packages("wordcloud")
if (!require("NLP")) install.packages("NLP")
if (!require("RColorBrewer")) install.packages("RColorBrewer")
if (!require("tm")) install.packages("tm")
if (!require("pacman")) install.packages("pacman")
if (!require("ggplot2")) install.packages("ggplot2")
pacman::p_load(pacman, party, psych, rio, tidyverse)

# LOAD AND PREPARE DATA ####################################

# Import CSV files with readr::read_csv() from tidyverse
df <- read_csv("data/philosophy_data.csv")

```
For each school of thought, there are specific philosophical texts chosen to represent the intellectual tradition.

\#\# summary \#\#

## Exploring the data

Before starting the analysis of specific concepts present in each school of thought, I will give you a quick summary of the most prominent terms for each philosophical tradition.

\#\# wordclouds \#\#

## Logic versus Emotions

Xxx

## Prominence of women

Xxx

## God presence

Xxx

This is an R Markdown document. Markdown is a simple formatting syntax for authoring HTML, PDF, and MS Word documents. For more details on using R Markdown see <http://rmarkdown.rstudio.com>.

When you click the **Knit** button a document will be generated that includes both content as well as the output of any embedded R code chunks within the document. You can embed an R code chunk like this:

```{r cars}
summary(cars)
```

## Including Plots

You can also embed plots, for example:

```{r pressure, echo=FALSE}
plot(pressure)
```

Note that the `echo = FALSE` parameter was added to the code chunk to prevent printing of the R code that generated the plot.
