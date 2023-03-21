## Inleiding

In dit project zal je een eerste aanzet doen naar interpretatie van je dataset. We weten ondertussen wat een model is en weten ook dat het allemaal begint bij data. In deze opdracht zal je met 2 datasets werken om basis interepretaties uit te voeren op de

## Voorbereiding

Start RStudio en maak een nieuw Rmd bestand aan met als bestandsnaam `voornaamachternaam.Rmd` en met de volgende yaml header. Deze opdracht bestaat uit 2 delen. Je kan perfect beide delen in 1 Rmarkdown bestand programmeren. Indien je ervoor kiest om 2 Rmarkdown bestanden in te dienen, dan dien je dit in een .zip-file met voornaamachternaam.zip

```
---
title: "Labo 3: Data & variabelen"
author: "Jouw naam hier"
date: "2023-03-08"
output: html_document
---
```

In bovenstaande header bepaal je hoe dit Rmd-document door `knitr` wordt omgezet naar een md-document en verder door `pandoc` wordt omgezet naar HTML. Met de juiste software op jouw pc kan je andere waarden ingeven voor `output`. Zo kan je ook PDF documenten maken, (2-dimensionale) presentaties en kan je sjablonen opladen, stijlen gebruiken en nog veel meer. Een deel van deze configuratie kan je rechtstreek via de UI van RStudio instellen (knopje rechts van de `Knit`\-knop). Als je een volledig overzicht wil van de YAML instellingen vind je in de [YAML Fieldguide](https://cran.r-project.org/web/packages/ymlthis/vignettes/yaml-fieldguide.html).

Voeg nu een R code chunk toe:

```
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
```

In vorig labo werd uitgelegd wat het pakket `knitr` doet.

Naast het pakket dat onze data bevat, gebruik je ook 2 bibiotheken die je ook bij onze vorige opdracht hebt gebruikt: `glmnet` en `mice`. De eerste dient om een elastic net geregulariseerde regressie uit te voeren. De tweede om met ontbrekende waarden in onze dataset om te gaan.

TIP: Lees de R-documentatie erop na zodat je de werking van deze functies begrijpt. In het Teams kanaal staat de link naar de R-documentatie.

## Deel 1: een eenvoudige dataset

## Data (tabel en interpretatie)

Maak nu een nieuwe header:

```
## Data (tabel en interpretatie)
```

Zoek bij de [oefendatasets](https://vincentarelbundock.github.io/Rdatasets/datasets.html) de dataset die over autosnelheden en halt-afstanden handelt. Kijk naar de data. Merk op dat deze dataset een erg eenvoudige structuur heeft.

Noteer onder welke R pakket deze dataset ter beschikking wordt gesteld. Daarna vul je de juiste pakketnaam aan in je R-code bij de libaries en maak je een R Code chunk aan met als label `data (tabel en interpretatie)`. Nu zal je, op basis van de vaardigheden uit Labo 1 en Labo 2, de variabelen eploreren. Wij zullen extra inzoomen op deze variabelen. Maak zoals vorige labo steeds chunks aan en schrijf al je bevindingen in de tekst _rond de code chunks_ en dus niet als commentaar binnen de code chunks.

```
#Eerst is het de bedoeling om je dataset in te laden

#Gebruik de setDT functie om uw dataset naar data.tables te converteren.

# Geef nu een tabel weer van je dataset.

# Toon nu de evolutie van de snelheid door middel van een histogram. 
# Als jou histogram werkt en je krijgt geen errors, dan wil dat zeggen dat jouw dataset geen 'gaps' heeft,
# m.a.w. het ontbreken van data.
```

In deze dataset hebben we vooral te maken met tijd en snelheid. Een goede manier om de snelheid over een ruimtelijke dimensie uit te drukken is gebruik maken van de plot functie. Probeer nu de plot functie te gebruiken om de snelheid in je dataset tegenover de afstand te zetten.

```
# Controleer of de snelheid en de afstand als natuurlijke getallen worden behaldeld.
```

Als alles goed is gegaan, zou je `numeric` als output moeten zien. Dit is het R datatype voor reële getallen, dus geen natuurlijke getallen. Maar we weten dat N ⊂ R, m.a.w. natuurlijke getallen zijn een deelverzameling van de reële getallen. Toch gaan we, om problemen in onze volgende fasen te vermijden, dit moeten rechtzetten.

```
# Zet je variabelen om naar integers


# Controleer nu opnieuw wat het datatype is
```

Nu zou je `integer` moeten terugkrijgen.

We zijn nu geïnteresseerd in de min- en max-waarden van onze snelheid.

```
# Controleer wat de minimum en maximum snelheid is in je dataset


# Doe hetzelfde voor je afstand
```

In onze eerste stap hebben we al gekeken of sprake was van ontbrekende data bij onze snelheid-variabele. We hebben echter geen controle gedaan op de variabele afstand. De afstanden zijn ook natuurlijke getallen. Dit betekent dat we ook hier een histogram kunnen genereren om zowel te controleren op ‘gaps’ in onze data, alsook de verdeling van de afstanden te bekijken.

```
# Genereer een histogram voor de afstand-variabele
```

Wat kan je afleiden uit je histogram wanneer het gaat over de verdeling van de afstanden?

Voor deze beperkte dataset is de exploratiefase nu voorbij. We hebben een aantal zaken uitgevoerd waardoor we meer zijn te weten gekomen over onze data. Nu kan je een conclusie schrijven over deze dataset.

## Conclusie eerste dataset

Schrijf nu zelf een conclusie op basis van jouw observaties.

## Deel 2

Nu is het de bedoeling om data exploratie toe te passen op een iets uitgebreide dataset. Doorloop opnieuw de stappen die je hierboven hebt uitgevoerd met in het achterhoofd mogelijk aanvullende stappen aangezien jouw dataset nu meer variabelen bevat.

Zoek nu naar de dataset over woonwaarden in de voorsteden van Boston. Zorg ervoor dat jouw dataset hebt ingeladen en bekijk de documentatie van deze dataset door het volgende in je R-code uit te voeren: `?Boston`

Loop nu door alle data-exploratie stappen en controleer je dataset. Schrijf daarna een conclusie.

Succes!