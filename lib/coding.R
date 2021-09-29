# INSTALL AND LOAD PACKAGES ################################


memory.limit(size = 200000)

# Install required packages if needed

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

# Load contributed packages with pacman
pacman::p_load(pacman, party, psych, rio, tidyverse)


# LOAD AND PREPARE DATA ####################################

# Import CSV files with readr::read_csv() from tidyverse
df <- read_csv("data/philosophy_data.csv")


# CREATING SUMMARY TABLE #####################################

table.schools <- unique(df %>% 
                          select(school)%>%
                          group_by(school))
table.summary <- unique(df %>% 
                          select(school, author, title, original_publication_date)%>%
                          group_by(school, author, title))



# LOOKING FOR WORDS############################################


# PLATO WORDCLOUD###############################################

# Import CSV files with readr::read_csv() from tidyverse

df1 <- df %>% 
  select(school, author, title, sentence_lowered, original_publication_date)%>%
  filter(school == "plato")

# Create a corpus  
corpus <- VCorpus(VectorSource(df1$sentence_lowered))

corpus <- tm_map(corpus, removeNumbers)

corpus <- tm_map(corpus, removeWords, stopwords("english"))

corpus <- tm_map(corpus, removePunctuation)

corpus <- tm_map(corpus, stripWhitespace)


tdm <- TermDocumentMatrix(corpus)
m <- as.matrix(tdm)
v <- sort(rowSums(m), decreasing = TRUE)
d <- data.frame(words = names(v), freq=v)
plato <- d

wordcloud(d$word, d$freq, random.order=FALSE, rot.per=0.3, scale=c(4,.5),
          max.words=101, colors=brewer.pal(8,"Dark2"))

# ARISTOTLE WORDCLOUD###############################################

# Import CSV files with readr::read_csv() from tidyverse

df1 <- df %>% 
  select(school, author, title, sentence_lowered, original_publication_date)%>%
  filter(school == "aristotle")

# Create a corpus  
corpus <- VCorpus(VectorSource(df1$sentence_lowered))

corpus <- tm_map(corpus, removeNumbers)

corpus <- tm_map(corpus, removeWords, stopwords("english"))

corpus <- tm_map(corpus, removePunctuation)

corpus <- tm_map(corpus, stripWhitespace)


tdm <- TermDocumentMatrix(corpus)
rm(corpus, df1)
m <- as.matrix(tdm)
v <- sort(rowSums(m), decreasing = TRUE)
d <- data.frame(words = names(v), freq=v)
aristotle <- d

wordcloud(d$word, d$freq, random.order=FALSE, rot.per=0.3, scale=c(4,.5),
          max.words=101, colors=brewer.pal(8,"Dark2"))

# CAPITALISM WORDCLOUD###############################################

# Import CSV files with readr::read_csv() from tidyverse

df1 <- df %>% 
  select(school, author, title, sentence_lowered, original_publication_date)%>%
  filter(school == "capitalism")

# Create a corpus  
corpus <- VCorpus(VectorSource(df1$sentence_lowered))

corpus <- tm_map(corpus, removeNumbers)

corpus <- tm_map(corpus, removeWords, stopwords("english"))

corpus <- tm_map(corpus, removePunctuation)

corpus <- tm_map(corpus, stripWhitespace)


tdm <- TermDocumentMatrix(corpus)
rm(corpus, df1)
m <- as.matrix(tdm)
v <- sort(rowSums(m), decreasing = TRUE)
d <- data.frame(words = names(v), freq=v)
capitalism <- d

wordcloud(d$word, d$freq, random.order=FALSE, rot.per=0.3, scale=c(4,.5),
          max.words=101, colors=brewer.pal(8,"Dark2"))

# COMMUNISM WORDCLOUD###############################################

# Import CSV files with readr::read_csv() from tidyverse

df1 <- df %>% 
  select(school, author, title, sentence_lowered, original_publication_date)%>%
  filter(school == "communism")

# Create a corpus  
corpus <- VCorpus(VectorSource(df1$sentence_lowered))

corpus <- tm_map(corpus, removeNumbers)

corpus <- tm_map(corpus, removeWords, stopwords("english"))

corpus <- tm_map(corpus, removePunctuation)

corpus <- tm_map(corpus, stripWhitespace)


tdm <- TermDocumentMatrix(corpus)
rm(corpus, df1)
m <- as.matrix(tdm)
v <- sort(rowSums(m), decreasing = TRUE)
d <- data.frame(words = names(v), freq=v)
communism <- d

wordcloud(d$word, d$freq, random.order=FALSE, rot.per=0.3, scale=c(4,.5),
          max.words=101, colors=brewer.pal(8,"Dark2"))

# CONTINENTAL WORDCLOUD###############################################

# Import CSV files with readr::read_csv() from tidyverse

df1 <- df %>% 
  select(school, author, title, sentence_lowered, original_publication_date)%>%
  filter(school == "continental")

# Create a corpus  
corpus <- VCorpus(VectorSource(df1$sentence_lowered))

corpus <- tm_map(corpus, removeNumbers)

corpus <- tm_map(corpus, removeWords, stopwords("english"))

corpus <- tm_map(corpus, removePunctuation)

corpus <- tm_map(corpus, stripWhitespace)


tdm <- TermDocumentMatrix(corpus)
rm(corpus, df1)
m <- as.matrix(tdm)
v <- sort(rowSums(m), decreasing = TRUE)
d <- data.frame(words = names(v), freq=v)
continental <- d

wordcloud(d$word, d$freq, random.order=FALSE, rot.per=0.3, scale=c(4,.5),
          max.words=101, colors=brewer.pal(8,"Dark2"))

# EMPIRICISM WORDCLOUD###############################################

# Import CSV files with readr::read_csv() from tidyverse

df1 <- df %>% 
  select(school, author, title, sentence_lowered, original_publication_date)%>%
  filter(school == "empiricism")

# Create a corpus  
corpus <- VCorpus(VectorSource(df1$sentence_lowered))

corpus <- tm_map(corpus, removeNumbers)

corpus <- tm_map(corpus, removeWords, stopwords("english"))

corpus <- tm_map(corpus, removePunctuation)

corpus <- tm_map(corpus, stripWhitespace)


tdm <- TermDocumentMatrix(corpus)
rm(corpus, df1)
m <- as.matrix(tdm)
v <- sort(rowSums(m), decreasing = TRUE)
d <- data.frame(words = names(v), freq=v)
empiricism <- d

wordcloud(d$word, d$freq, random.order=FALSE, rot.per=0.3, scale=c(4,.5),
          max.words=101, colors=brewer.pal(8,"Dark2"))

# FEMINISM WORDCLOUD###############################################

# Import CSV files with readr::read_csv() from tidyverse

df1 <- df %>% 
  select(school, author, title, sentence_lowered, original_publication_date)%>%
  filter(school == "feminism")

# Create a corpus  
corpus <- VCorpus(VectorSource(df1$sentence_lowered))

corpus <- tm_map(corpus, removeNumbers)

corpus <- tm_map(corpus, removeWords, stopwords("english"))

corpus <- tm_map(corpus, removePunctuation)

corpus <- tm_map(corpus, stripWhitespace)


tdm <- TermDocumentMatrix(corpus)
rm(corpus, df1)
m <- as.matrix(tdm)
v <- sort(rowSums(m), decreasing = TRUE)
d <- data.frame(words = names(v), freq=v)
feminism <- d

wordcloud(d$word, d$freq, random.order=FALSE, rot.per=0.3, scale=c(4,.5),
          max.words=101, colors=brewer.pal(8,"Dark2"))

# GERMAN_IDEALISM WORDCLOUD###############################################

# Import CSV files with readr::read_csv() from tidyverse

df1 <- df %>% 
  select(school, author, title, sentence_lowered, original_publication_date)%>%
  filter(school == "german_idealism")

# Create a corpus  
corpus <- VCorpus(VectorSource(df1$sentence_lowered))

corpus <- tm_map(corpus, removeNumbers)

corpus <- tm_map(corpus, removeWords, stopwords("english"))

corpus <- tm_map(corpus, removePunctuation)

corpus <- tm_map(corpus, stripWhitespace)


tdm <- TermDocumentMatrix(corpus)
rm(corpus, df1)
m <- as.matrix(tdm)
v <- sort(rowSums(m), decreasing = TRUE)
d <- data.frame(words = names(v), freq=v)
german_idealism <- d

wordcloud(d$word, d$freq, random.order=FALSE, rot.per=0.3, scale=c(4,.5),
          max.words=101, colors=brewer.pal(8,"Dark2"))

# NIETZSCHE WORDCLOUD###############################################

# Import CSV files with readr::read_csv() from tidyverse

df1 <- df %>% 
  select(school, author, title, sentence_lowered, original_publication_date)%>%
  filter(school == "nietzsche")

# Create a corpus  
corpus <- VCorpus(VectorSource(df1$sentence_lowered))

corpus <- tm_map(corpus, removeNumbers)

corpus <- tm_map(corpus, removeWords, stopwords("english"))

corpus <- tm_map(corpus, removePunctuation)

corpus <- tm_map(corpus, stripWhitespace)


tdm <- TermDocumentMatrix(corpus)
rm(corpus, df1)
m <- as.matrix(tdm)
v <- sort(rowSums(m), decreasing = TRUE)
d <- data.frame(words = names(v), freq=v)
nietzsche <- d

wordcloud(d$word, d$freq, random.order=FALSE, rot.per=0.3, scale=c(4,.5),
          max.words=101, colors=brewer.pal(8,"Dark2"))

# PHENOMENOLOGY WORDCLOUD###############################################

# Import CSV files with readr::read_csv() from tidyverse

df1 <- df %>% 
  select(school, author, title, sentence_lowered, original_publication_date)%>%
  filter(school == "phenomenology")

# Create a corpus  
corpus <- VCorpus(VectorSource(df1$sentence_lowered))

corpus <- tm_map(corpus, removeNumbers)

corpus <- tm_map(corpus, removeWords, stopwords("english"))

corpus <- tm_map(corpus, removePunctuation)

corpus <- tm_map(corpus, stripWhitespace)


tdm <- TermDocumentMatrix(corpus)
rm(corpus, df1)
m <- as.matrix(tdm)
v <- sort(rowSums(m), decreasing = TRUE)
d <- data.frame(words = names(v), freq=v)
phenomenology <- d

wordcloud(d$word, d$freq, random.order=FALSE, rot.per=0.3, scale=c(4,.5),
          max.words=101, colors=brewer.pal(8,"Dark2"))

# RATIONALISM WORDCLOUD###############################################

# Import CSV files with readr::read_csv() from tidyverse

df1 <- df %>% 
  select(school, author, title, sentence_lowered, original_publication_date)%>%
  filter(school == "rationalism")

# Create a corpus  
corpus <- VCorpus(VectorSource(df1$sentence_lowered))

corpus <- tm_map(corpus, removeNumbers)

corpus <- tm_map(corpus, removeWords, stopwords("english"))

corpus <- tm_map(corpus, removePunctuation)

corpus <- tm_map(corpus, stripWhitespace)


tdm <- TermDocumentMatrix(corpus)
rm(corpus, df1)
m <- as.matrix(tdm)
v <- sort(rowSums(m), decreasing = TRUE)
d <- data.frame(words = names(v), freq=v)
rationalism <- d

wordcloud(d$word, d$freq, random.order=FALSE, rot.per=0.3, scale=c(4,.5),
          max.words=101, colors=brewer.pal(8,"Dark2"))

# STOICISM WORDCLOUD###############################################

# Import CSV files with readr::read_csv() from tidyverse

df1 <- df %>% 
  select(school, author, title, sentence_lowered, original_publication_date)%>%
  filter(school == "stoicism")

# Create a corpus  
corpus <- VCorpus(VectorSource(df1$sentence_lowered))

corpus <- tm_map(corpus, removeNumbers)

corpus <- tm_map(corpus, removeWords, stopwords("english"))

corpus <- tm_map(corpus, removePunctuation)

corpus <- tm_map(corpus, stripWhitespace)


tdm <- TermDocumentMatrix(corpus)
rm(corpus, df1)
m <- as.matrix(tdm)
v <- sort(rowSums(m), decreasing = TRUE)
d <- data.frame(words = names(v), freq=v)
stoicism <- d

wordcloud(d$word, d$freq, random.order=FALSE, rot.per=0.3, scale=c(4,.5),
          max.words=101, colors=brewer.pal(8,"Dark2"))

# ANALYTIC WORDCLOUD###############################################

# Import CSV files with readr::read_csv() from tidyverse

df1 <- df %>% 
  select(school, author, title, sentence_lowered, original_publication_date)%>%
  filter(school == "analytic")

# Create a corpus  
corpus <- VCorpus(VectorSource(df1$sentence_lowered))

corpus <- tm_map(corpus, removeNumbers)

corpus <- tm_map(corpus, removeWords, stopwords("english"))

corpus <- tm_map(corpus, removePunctuation)

corpus <- tm_map(corpus, stripWhitespace)


tdm <- TermDocumentMatrix(corpus)
rm(corpus, df, df1, m, d, v)
m <- as.matrix(tdm)
v <- sort(rowSums(m), decreasing = TRUE)
d <- data.frame(words = names(v), freq=v)
analytic <- d

wordcloud(d$word, d$freq, random.order=FALSE, rot.per=0.3, scale=c(4,.5),
          max.words=101, colors=brewer.pal(8,"Dark2"))

# FREQUENCY OF INTERESTING WORDS###############################################

# Generating the matrix


rm(m)

women.data <- c("women","woman", "lady", "ladies",	"girl",	"girls",	"female",	"feminine")
women.data <- matrix(women.data,nrow=8)

women <- merge(women.data,analytic, by.x="V1", by.y="words", all.x=TRUE)
women <- merge(women,aristotle, by.x="V1", by.y="words", all.x=TRUE)
women <- merge(women,capitalism, by.x="V1", by.y="words", all.x=TRUE)
women <- merge(women,communism, by.x="V1", by.y="words", all.x=TRUE)
women <- merge(women,continental, by.x="V1", by.y="words", all.x=TRUE)
women <- merge(women,empiricism, by.x="V1", by.y="words", all.x=TRUE)
women <- merge(women,feminism, by.x="V1", by.y="words", all.x=TRUE)
women <- merge(women,german_idealism, by.x="V1", by.y="words", all.x=TRUE)
women <- merge(women,nietzsche, by.x="V1", by.y="words", all.x=TRUE)
women <- merge(women,phenomenology, by.x="V1", by.y="words", all.x=TRUE)
women <- merge(women,plato, by.x="V1", by.y="words", all.x=TRUE)
women <- merge(women,rationalism, by.x="V1", by.y="words", all.x=TRUE)
women <- merge(women,stoicism, by.x="V1", by.y="words", all.x=TRUE)

names(women) <- c("word", "analytic", "aristotle", "capitalism", "communism", "continental", 
                  "empiricism", "feminism", "german_idealism", "nietzsche", "phenomenology", 
                  "plato", "rationalism", "stoicism")

men.data <- c("men","man", "gentleman", "gentlemen",	"boy",	"boys",	"male",	"mascuine")
men.data <- matrix(men.data,nrow=8)

men <- merge(men.data,analytic, by.x="V1", by.y="words", all.x=TRUE)
men <- merge(men,aristotle, by.x="V1", by.y="words", all.x=TRUE)
men <- merge(men,capitalism, by.x="V1", by.y="words", all.x=TRUE)
men <- merge(men,communism, by.x="V1", by.y="words", all.x=TRUE)
men <- merge(men,continental, by.x="V1", by.y="words", all.x=TRUE)
men <- merge(men,empiricism, by.x="V1", by.y="words", all.x=TRUE)
men <- merge(men,feminism, by.x="V1", by.y="words", all.x=TRUE)
men <- merge(men,german_idealism, by.x="V1", by.y="words", all.x=TRUE)
men <- merge(men,nietzsche, by.x="V1", by.y="words", all.x=TRUE)
men <- merge(men,phenomenology, by.x="V1", by.y="words", all.x=TRUE)
men <- merge(men,plato, by.x="V1", by.y="words", all.x=TRUE)
men <- merge(men,rationalism, by.x="V1", by.y="words", all.x=TRUE)
men <- merge(men,stoicism, by.x="V1", by.y="words", all.x=TRUE)

names(men) <- c("word", "analytic", "aristotle", "capitalism", "communism", "continental", 
                "empiricism", "feminism", "german_idealism", "nietzsche", "phenomenology", 
                "plato", "rationalism", "stoicism")

emotions.data <- c("emotions","emotion", "feel", "love",	"passion",	"sentiment",	"sentiments",	"fear")
emotions.data <- matrix(emotions.data,nrow=8)

emotions <- merge(emotions.data,analytic, by.x="V1", by.y="words", all.x=TRUE)
emotions <- merge(emotions,aristotle, by.x="V1", by.y="words", all.x=TRUE)
emotions <- merge(emotions,capitalism, by.x="V1", by.y="words", all.x=TRUE)
emotions <- merge(emotions,communism, by.x="V1", by.y="words", all.x=TRUE)
emotions <- merge(emotions,continental, by.x="V1", by.y="words", all.x=TRUE)
emotions <- merge(emotions,empiricism, by.x="V1", by.y="words", all.x=TRUE)
emotions <- merge(emotions,feminism, by.x="V1", by.y="words", all.x=TRUE)
emotions <- merge(emotions,german_idealism, by.x="V1", by.y="words", all.x=TRUE)
emotions <- merge(emotions,nietzsche, by.x="V1", by.y="words", all.x=TRUE)
emotions <- merge(emotions,phenomenology, by.x="V1", by.y="words", all.x=TRUE)
emotions <- merge(emotions,plato, by.x="V1", by.y="words", all.x=TRUE)
emotions <- merge(emotions,rationalism, by.x="V1", by.y="words", all.x=TRUE)
emotions <- merge(emotions,stoicism, by.x="V1", by.y="words", all.x=TRUE)

names(emotions) <- c("word", "analytic", "aristotle", "capitalism", "communism", "continental", 
                     "empiricism", "feminism", "german_idealism", "nietzsche", "phenomenology", 
                     "plato", "rationalism", "stoicism")

reasons.data <- c("reasons","logic", "think", "rational",	"coherent",	"analytic",	"analysis",	"reason")
reasons.data <- matrix(reasons.data,nrow=8)

reasons <- merge(reasons.data,analytic, by.x="V1", by.y="words", all.x=TRUE)
reasons <- merge(reasons,aristotle, by.x="V1", by.y="words", all.x=TRUE)
reasons <- merge(reasons,capitalism, by.x="V1", by.y="words", all.x=TRUE)
reasons <- merge(reasons,communism, by.x="V1", by.y="words", all.x=TRUE)
reasons <- merge(reasons,continental, by.x="V1", by.y="words", all.x=TRUE)
reasons <- merge(reasons,empiricism, by.x="V1", by.y="words", all.x=TRUE)
reasons <- merge(reasons,feminism, by.x="V1", by.y="words", all.x=TRUE)
reasons <- merge(reasons,german_idealism, by.x="V1", by.y="words", all.x=TRUE)
reasons <- merge(reasons,nietzsche, by.x="V1", by.y="words", all.x=TRUE)
reasons <- merge(reasons,phenomenology, by.x="V1", by.y="words", all.x=TRUE)
reasons <- merge(reasons,plato, by.x="V1", by.y="words", all.x=TRUE)
reasons <- merge(reasons,rationalism, by.x="V1", by.y="words", all.x=TRUE)
reasons <- merge(reasons,stoicism, by.x="V1", by.y="words", all.x=TRUE)

names(reasons) <- c("word", "analytic", "aristotle", "capitalism", "communism", "continental", 
                    "empiricism", "feminism", "german_idealism", "nietzsche", "phenomenology", 
                    "plato", "rationalism", "stoicism")

god.data <- c("god","goddess", "divinity", "creator",	"gods",	"deity",	"deities",	"divine")
god.data <- matrix(god.data,nrow=8)

god <- merge(god.data,analytic, by.x="V1", by.y="words", all.x=TRUE)
god <- merge(god,aristotle, by.x="V1", by.y="words", all.x=TRUE)
god <- merge(god,capitalism, by.x="V1", by.y="words", all.x=TRUE)
god <- merge(god,communism, by.x="V1", by.y="words", all.x=TRUE)
god <- merge(god,continental, by.x="V1", by.y="words", all.x=TRUE)
god <- merge(god,empiricism, by.x="V1", by.y="words", all.x=TRUE)
god <- merge(god,feminism, by.x="V1", by.y="words", all.x=TRUE)
god <- merge(god,german_idealism, by.x="V1", by.y="words", all.x=TRUE)
god <- merge(god,nietzsche, by.x="V1", by.y="words", all.x=TRUE)
god <- merge(god,phenomenology, by.x="V1", by.y="words", all.x=TRUE)
god <- merge(god,plato, by.x="V1", by.y="words", all.x=TRUE)
god <- merge(god,rationalism, by.x="V1", by.y="words", all.x=TRUE)
god <- merge(god,stoicism, by.x="V1", by.y="words", all.x=TRUE)

names(god) <- c("word", "analytic", "aristotle", "capitalism", "communism", "continental", 
                "empiricism", "feminism", "german_idealism", "nietzsche", "phenomenology", 
                "plato", "rationalism", "stoicism")


women[is.na(women)] <- 0
men[is.na(men)] <- 0
emotions[is.na(emotions)] <- 0
reasons[is.na(reasons)] <- 0
god[is.na(god)] <- 0

schools.dat <- matrix(c("analytic", "aristotle", "capitalism", "communism", "continental", 
                 "empiricism", "feminism", "german_idealism", "nietzsche", "phenomenology", 
                 "plato", "rationalism", "stoicism"), nrow=13)


women.percentage <- matrix(c(sum(women$analytic)/sum(analytic$freq), sum(women$aristotle)/sum(aristotle$freq), 
                             sum(women$capitalism)/sum(capitalism$freq),sum(women$communism)/sum(communism$freq), 
                             sum(women$continental)/ sum(continental$freq), sum(women$empiricism)/sum(empiricism$freq), 
                             sum(women$feminism)/sum(feminism$freq), sum(women$german_idealism)/sum(german_idealism$freq), 
                             sum(women$nietzsche)/sum(nietzsche$freq), sum(women$phenomenology)/sum(phenomenology$freq), 
                             sum(women$plato)/sum(plato$freq), sum(women$rationalism)/sum(rationalism$freq),
                             sum(women$stoicism)/sum(stoicism$freq)),nrow=13)

as.numeric(women.percentage)

women.percentage <- round(women.percentage*1000,2)


men.percentage <- matrix(c(sum(men$analytic)/sum(analytic$freq), sum(men$aristotle)/sum(aristotle$freq), 
                           sum(men$capitalism)/sum(capitalism$freq),sum(men$communism)/sum(communism$freq), 
                           sum(men$continental)/ sum(continental$freq), sum(men$empiricism)/sum(empiricism$freq), 
                           sum(men$feminism)/sum(feminism$freq), sum(men$german_idealism)/sum(german_idealism$freq), 
                           sum(men$nietzsche)/sum(nietzsche$freq), sum(men$phenomenology)/sum(phenomenology$freq), 
                           sum(men$plato)/sum(plato$freq), sum(men$rationalism)/sum(rationalism$freq),
                           sum(men$stoicism)/sum(stoicism$freq)),nrow=13)

as.numeric(men.percentage)

men.percentage <- round(men.percentage*1000,2)

emotions.percentage <- matrix(c(sum(emotions$analytic)/sum(analytic$freq), sum(emotions$aristotle)/sum(aristotle$freq), 
                                sum(emotions$capitalism)/sum(capitalism$freq),sum(emotions$communism)/sum(communism$freq), 
                                sum(emotions$continental)/ sum(continental$freq), sum(emotions$empiricism)/sum(empiricism$freq), 
                                sum(emotions$feminism)/sum(feminism$freq), sum(emotions$german_idealism)/sum(german_idealism$freq), 
                                sum(emotions$nietzsche)/sum(nietzsche$freq), sum(emotions$phenomenology)/sum(phenomenology$freq), 
                                sum(emotions$plato)/sum(plato$freq), sum(emotions$rationalism)/sum(rationalism$freq),
                                sum(emotions$stoicism)/sum(stoicism$freq)),nrow=13)

as.numeric(emotions.percentage)

emotions.percentage <- round(emotions.percentage*1000,2)

reasons.percentage <- matrix(c(sum(reasons$analytic)/sum(analytic$freq), sum(reasons$aristotle)/sum(aristotle$freq), 
                               sum(reasons$capitalism)/sum(capitalism$freq),sum(reasons$communism)/sum(communism$freq), 
                               sum(reasons$continental)/ sum(continental$freq), sum(reasons$empiricism)/sum(empiricism$freq), 
                               sum(reasons$feminism)/sum(feminism$freq), sum(reasons$german_idealism)/sum(german_idealism$freq), 
                               sum(reasons$nietzsche)/sum(nietzsche$freq), sum(reasons$phenomenology)/sum(phenomenology$freq), 
                               sum(reasons$plato)/sum(plato$freq), sum(reasons$rationalism)/sum(rationalism$freq),
                               sum(reasons$stoicism)/sum(stoicism$freq)),nrow=13)

as.numeric(reasons.percentage)

reasons.percentage <- round(reasons.percentage*1000,2)

god.percentage <- matrix(c(sum(god$analytic)/sum(analytic$freq), sum(god$aristotle)/sum(aristotle$freq), 
                           sum(god$capitalism)/sum(capitalism$freq),sum(god$communism)/sum(communism$freq), 
                           sum(god$continental)/ sum(continental$freq), sum(god$empiricism)/sum(empiricism$freq), 
                           sum(god$feminism)/sum(feminism$freq), sum(god$german_idealism)/sum(german_idealism$freq), 
                           sum(god$nietzsche)/sum(nietzsche$freq), sum(god$phenomenology)/sum(phenomenology$freq), 
                           sum(god$plato)/sum(plato$freq), sum(god$rationalism)/sum(rationalism$freq),
                           sum(god$stoicism)/sum(stoicism$freq)),nrow=13)

as.numeric(god.percentage)

god.percentage <- round(god.percentage*1000,2)

results <- matrix(c(schools.dat,as.numeric(women.percentage), as.numeric(men.percentage), 
                    as.numeric(emotions.percentage), as.numeric(reasons.percentage),
                    as.numeric(god.percentage)), nrow=13)

colnames(results) <- c("schools", "women", "men", "emotions", "reasons", "god")


women.table <- matrix(c(c("analytic", "aristotle", "capitalism", "communism", "continental", 
                          "empiricism", "feminism", "german_idealism", "nietzsche", "phenomenology", 
                          "plato", "rationalism", "stoicism"),
                        c("# words employed to describe WOMEN","# words employed to describe WOMEN",
                          "# words employed to describe WOMEN","# words employed to describe WOMEN",
                          "# words employed to describe WOMEN","# words employed to describe WOMEN",
                          "# words employed to describe WOMEN","# words employed to describe WOMEN",
                          "# words employed to describe WOMEN","# words employed to describe WOMEN",
                          "# words employed to describe WOMEN","# words employed to describe WOMEN",
                          "# words employed to describe WOMEN"),results[,2]), nrow=13)


colnames(women.table) <- c("School","Legend", "Value")

men.table <- matrix(c(c("analytic", "aristotle", "capitalism", "communism", "continental", 
                        "empiricism", "feminism", "german_idealism", "nietzsche", "phenomenology", 
                        "plato", "rationalism", "stoicism"),
                      c("# words employed to describe MEN","# words employed to describe MEN",
                        "# words employed to describe MEN","# words employed to describe MEN",
                        "# words employed to describe MEN","# words employed to describe MEN",
                        "# words employed to describe MEN","# words employed to describe MEN",
                        "# words employed to describe MEN","# words employed to describe MEN",
                        "# words employed to describe MEN","# words employed to describe MEN",
                        "# words employed to describe MEN"),results[,3]), nrow=13)

colnames(men.table) <- c("School","Legend", "Value")

women.men.table <- rbind(women.table,men.table)

emotions.table <- matrix(c(c("analytic", "aristotle", "capitalism", "communism", "continental", 
                             "empiricism", "feminism", "german_idealism", "nietzsche", "phenomenology", 
                             "plato", "rationalism", "stoicism"),
                           c("# words employed to describe EMOTION","# words employed to describe EMOTION",
                             "# words employed to describe EMOTION","# words employed to describe EMOTION",
                             "# words employed to describe EMOTION","# words employed to describe EMOTION",
                             "# words employed to describe EMOTION","# words employed to describe EMOTION",
                             "# words employed to describe EMOTION","# words employed to describe EMOTION",
                             "# words employed to describe EMOTION","# words employed to describe EMOTION",
                             "# words employed to describe EMOTION"),results[,4]), nrow=13)


colnames(emotions.table) <- c("School","Legend", "Value")

reasons.table <- matrix(c(c("analytic", "aristotle", "capitalism", "communism", "continental", 
                            "empiricism", "feminism", "german_idealism", "nietzsche", "phenomenology", 
                            "plato", "rationalism", "stoicism"),
                          c("# words employed to describe REASON","# words employed to describe REASON",
                            "# words employed to describe REASON","# words employed to describe REASON",
                            "# words employed to describe REASON","# words employed to describe REASON",
                            "# words employed to describe REASON","# words employed to describe REASON",
                            "# words employed to describe REASON","# words employed to describe REASON",
                            "# words employed to describe REASON","# words employed to describe REASON",
                            "# words employed to describe REASON"),results[,5]), nrow=13)

colnames(reasons.table) <- c("School","Legend", "Value")

emotions.reasons.table <- rbind(emotions.table,reasons.table)

god.table <- matrix(c(c("analytic", "aristotle", "capitalism", "communism", "continental", 
                        "empiricism", "feminism", "german_idealism", "nietzsche", "phenomenology", 
                        "plato", "rationalism", "stoicism"),
                      c("# words employed to describe GOD","# words employed to describe GOD",
                        "# words employed to describe GOD","# words employed to describe GOD",
                        "# words employed to describe GOD","# words employed to describe GOD",
                        "# words employed to describe GOD","# words employed to describe GOD",
                        "# words employed to describe GOD","# words employed to describe GOD",
                        "# words employed to describe GOD","# words employed to describe GOD",
                        "# words employed to describe GOD"),results[,6]), nrow=13)


colnames(god.table) <- c("School","Legend", "Value")

women.men.table <- as.data.frame(women.men.table)
women.table <- as.data.frame(women.table)
men.table <- as.data.frame(men.table)
emotions.table <- as.data.frame(emotions.table)
reasons.table <- as.data.frame(reasons.table)
emotions.reasons.table <- as.data.frame(emotions.reasons.table)
god.table <- as.data.frame(god.table)

women.men.table[,3] <- as.numeric(women.men.table[,3])
women.table[,3] <- as.numeric(women.table[,3])
men.table[,3] <- as.numeric(men.table[,3])
emotions.table[,3] <- as.numeric(emotions.table[,3])
reasons.table[,3] <- as.numeric(reasons.table[,3])
emotions.reasons.table[,3] <- as.numeric(emotions.reasons.table[,3])
god.table[,3] <- as.numeric(god.table[,3])










ggplot(women.men.table, aes(x = School, y = Value, fill = Legend)) +
  geom_col(position = position_dodge()) +
  scale_fill_manual(values = c("#3db5ff", "#104E8B")) +
  coord_flip() +
  ylim(0,32) +
  geom_text(aes(label = Value), position = position_dodge(1), 
            vjust = 0.2, hjust = -0.1, size = 3, color = "#000000") +
  labs(title = "Words employed to describe Women and Men in great texts in the history of philosophy", 
          subtitle = "Proportion per 1000 words", 
       caption = "Data source: Prepared by the author using data from The Philosophy Data Project",
       x = "Schools of Philosophy", y = "Proportion per 1000 words written") +
  theme(plot.title = element_text(color = "black", size = 12, face = "bold"),
    plot.subtitle = element_text(color = "black"),
    plot.caption = element_text(face = "italic", colour="black"),
    legend.title = element_text(colour = "black",  face = "bold.italic"), 
    legend.text = element_text(face = "italic", colour="black"), 
    axis.title = element_text(face = "bold", size = (11), colour = "black"),
    axis.text = element_text(colour = "black", size = (10)))
  



ggplot(women.table, aes(x = School, y = Value, fill = Legend)) +
  geom_col(position = position_dodge()) +
  scale_fill_manual(values = c("#3db5ff", "#104E8B")) +
  coord_flip() +
  ylim(0,32) +
  geom_text(aes(label = Value), position = position_dodge(1), 
            vjust = 0.2, hjust = -0.1, size = 3, color = "#000000") +
  labs(title = "Words employed to describe Women in great texts in the history of philosophy", 
       subtitle = "Proportion per 1000 words", 
       caption = "Data source: Prepared by the author using data from The Philosophy Data Project",
       x = "Schools of Philosophy", y = "Proportion per 1000 words written") +
  theme(plot.title = element_text(color = "black", size = 12, face = "bold"),
        plot.subtitle = element_text(color = "black"),
        plot.caption = element_text(face = "italic", colour="black"),
        legend.title = element_text(colour = "black",  face = "bold.italic"), 
        legend.text = element_text(face = "italic", colour="black"), 
        axis.title = element_text(face = "bold", size = (11), colour = "black"),
        axis.text = element_text(colour = "black", size = (10)))


ggplot(emotions.reasons.table, aes(x = School, y = Value, fill = Legend)) +
  geom_col(position = position_dodge()) +
  scale_fill_manual(values = c("#3db5ff", "#104E8B")) +
  coord_flip() +
  ylim(0,15) +
  geom_text(aes(label = Value), position = position_dodge(1), 
            vjust = 0.2, hjust = -0.1, size = 3, color = "#000000") +
  labs(title = "Words employed to describe Emotion and Reason in great texts in the history of philosophy", 
       subtitle = "Proportion per 1000 words", 
       caption = "Data source: Prepared by the author using data from The Philosophy Data Project",
       x = "Schools of Philosophy", y = "Proportion per 1000 words written") +
  theme(plot.title = element_text(color = "black", size = 12, face = "bold"),
        plot.subtitle = element_text(color = "black"),
        plot.caption = element_text(face = "italic", colour="black"),
        legend.title = element_text(colour = "black",  face = "bold.italic"), 
        legend.text = element_text(face = "italic", colour="black"), 
        axis.title = element_text(face = "bold", size = (11), colour = "black"),
        axis.text = element_text(colour = "black", size = (10)))


ggplot(god.table, aes(x = School, y = Value, fill = Legend)) +
  geom_col(position = position_dodge()) +
  scale_fill_manual(values = c("#3db5ff", "#104E8B")) +
  coord_flip() +
  ylim(0,15) +
  geom_text(aes(label = Value), position = position_dodge(1), 
            vjust = 0.2, hjust = -0.1, size = 3, color = "#000000") +
  labs(title = "Words employed to describe God in great texts in the history of philosophy", 
       subtitle = "Proportion per 1000 words", 
       caption = "Data source: Prepared by the author using data from The Philosophy Data Project",
       x = "Schools of Philosophy", y = "Proportion per 1000 words written") +
  theme(plot.title = element_text(color = "black", size = 12, face = "bold"),
        plot.subtitle = element_text(color = "black"),
        plot.caption = element_text(face = "italic", colour="black"),
        legend.title = element_text(colour = "black",  face = "bold.italic"), 
        legend.text = element_text(face = "italic", colour="black"), 
        axis.title = element_text(face = "bold", size = (11), colour = "black"),
        axis.text = element_text(colour = "black", size = (10)))


# TABLES###############################################

# Generating the matrix



