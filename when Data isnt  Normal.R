ggplot(library())
library(rcompanion)
plotNormalHistogram(anime$score)
plotNormalHistogram(anime$scored_by)
anime$scored_bySQRT <- sqrt(anime$scored_by)
plotNormalHistogram(anime$scored_bySQRT)
anime$scored_byLOG <- log(anime$scored_by)
plotNormalHistogram(anime$scored_byLOG)


library("IDPmisc")
anime2 <- NaRV.omit(anime)

plotNormalHistogram(anime2$scored_byLOG)
anime$aired_from_yearSQ <- anime$aired_from_year * anime$aired_from_year
plotNormalHistogram(anime$aired_from_yearSQ)

anime$aired_from_yearCUBE <- anime$aired_from_year ^ 3
plotNormalHistogram(anime$aired_from_yearCUBE)
