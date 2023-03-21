title: "Labo 3: Data & variabelen"
author: "jochen sambaer"
date: "2023-03-14"
output: html_document
{r}
Copy code
library(AER)
library(magrittr)
library(data.table)
library(knitr)
library(reticulate)
library(datasets)
library(glmnet)
library(mice)

set.seed(42)

opts_chunk$set(echo = TRUE)
Data (tabel en interpretatie)
We kiezen de dataset cars uit het package datasets. De dataset bevat data over de afstand die auto's afleggen voordat ze stoppen en de snelheid waarmee ze reden.

{r}
Copy code
data(cars)
setDT(cars)
head(cars)
De dataset cars bevat 50 observaties en 2 variabelen: speed en dist. De speed variabele is de snelheid waarmee de auto reed (in mijlen per uur) en de dist variabele is de afstand die de auto aflegde alvorens te stoppen (in feet).

Laten we de distributie van de snelheid onderzoeken door middel van een histogram.

{r}
Copy code
hist(cars$speed, xlab = "Snelheid (mph)", main = "Histogram van snelheid")
histogram_snelheid

We zien dat de snelheid een normale verdeling volgt.

Nu willen we de relatie tussen snelheid en afstand onderzoeken door middel van een scatterplot.

{r}
Copy code
plot(cars$dist, cars$speed, xlab = "Afstand (ft)", ylab = "Snelheid (mph)", main = "Scatterplot van snelheid tegenover afstand")
scatterplot_snelheid_afstand

Er lijkt een duidelijke positieve correlatie te zijn tussen snelheid en afstand.

Laten we ten slotte controleren of de variabelen speed en dist als natuurlijke getallen worden behandeld.

{r}
Copy code
class(cars$speed)
class(cars$dist)
De variabelen worden behandeld als numerieke (reële) getallen. Om problemen bij verdere analyse te voorkomen, is het niet nodig om deze om te zetten naar integers.