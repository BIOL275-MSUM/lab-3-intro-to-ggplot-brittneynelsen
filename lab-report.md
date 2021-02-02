Lab 3 Report
================
brittneynelsen
2021-02-02

## Instructions

In each section below, create the appropriate graph and answer the
questions. Replace any triple underscores \_\_\_ with your own text.

Replace the \_\_\_’s in your README.

Knit your README and this Lab Report.

## Fireflies

Male fireflies of the species *Photinus ignitus* attract females with
pulses of light. Flashes of longer duration seem to attract the most
females. During mating, the male transfers a spermatophore to the
female. Besides containing sperm, the spermatophore is rich in protein
that is distributed by the female to her fertilized eggs. The data below
are measurements of spermatophore mass (in mg) of 35 males (Cratsley and
Lewis 2003). This question comes from your textbook.

The path to the data is
“<https://whitlockschluter.zoology.ubc.ca/wp-content/data/chapter02/chap02q19FireflySpermatophoreMass.csv>”

> A. Insert an R code chunk and create a graph depicting the frequency
> distribution of the 35 mass measurements. It should have legible text
> and appropriate axis labels.

ggplot(data = firefly\_data) \# made blank graph ggplot(data =
firefly\_data) + geom\_histogram(mapping = aes(x = spermatophoreMass))

ggplot(data = firefly\_data) + geom\_histogram(mapping = aes(x =
spermatophoreMass), binwidth = 0.02) labs(x = “spermatophoreMass”, y =
“count (number of males)”)

> B. What type of graph did you choose in part (A)? Why?

I chose a histogram because it shows the distribution of one numerical
variable,fireflies. They are better at showing frequency distribution.

> C. Describe the shape of the frequency distribution. What are its main
> features?

The shape of the frequency of the graph is right skewed. There was an
outlier sitting at the points, 0.17mg through 0.18mg. There was also a
bell-shaped curve between the points 0.03 mg and 0.10 mg.

> D. What term would be used to describe the largest measurement in the
> frequency distribution? You can refer to the lecture slides, your
> notes, or the textbook.

Mode.

## Bird orders

The ebird\_taxonomy dataset in the auk package is a simplified version
of the taxonomy used by eBird. This taxonomy is based on the Clements
Checklist. The dataset contains all known species of birds and their
taxonomic order and family. The code below creates a new dataset named
birds which consists of

    library(auk)                          # load the auk package
    birds <- ebird_taxonomy %>%           # start with the ebird_taxonomy data
      as_tibble() %>%                     # tibbles print better in the console
      filter(category == "species")       # remove non-species taxa

> E. How many bird species are in the new birds dataset? How did you
> find out?

There are 10,721 bird species. I created a table showing scientific
names, from this point I was able to determine that there were 10,721
rows representing the species.

> H. How many orders are there? You can get this right by counting on
> the graph, but you will only get full points if you use some code to
> figure it out.

There are 41 orders. I made a contigency table consisting of the orders
and frequency. The 41 rows allow me to see that there are 41 orders.

> F. Insert an R code chunk and create a graph depicting the
> distribution of orders in the birds dataset. Sort the orders with the
> most frequent on the left. It should have legible text and appropriate
> axis labels.

ggplot(data = birds) + geom\_bar(mapping = aes(x = fct\_infreq(order)),
fill = “\#C5351B”, width = .8) + labs(x = “Order”, y = “Frequency
(number of species)”) + scale\_y\_log10() + theme\_classic(base\_size =
12) + theme( axis.title = element\_text(face = “bold”), axis.text =
element\_text(color = “black”, size = rel(0.65)), axis.text.x =
element\_text(angle = 45, hjust = 1) )

> G. What kind of graph did you create? Why?

I created a bar graph because the bar graph represents the number of
birds in that species that were identified. There were many different
categorical values. You couldn’t use a Histogram because that is for one
specific numerical value.

## Links to peer review

I reviewed Ethans’s lab report at this URL:
<https://github.com/BIOL275-MSUM/lab-3-intro-to-ggplot-Ethan-Dotzler>

Ethan reviewed my lab report at this URL:
<https://github.com/BIOL275-MSUM/lab-3-intro-to-ggplot-brittneynelsen>

## Session Info

Here is my session information:

``` r
sessioninfo::session_info()
```

    ## ─ Session info ───────────────────────────────────────────────────────────────
    ##  setting  value                       
    ##  version  R version 4.0.3 (2020-10-10)
    ##  os       macOS Big Sur 10.16         
    ##  system   x86_64, darwin17.0          
    ##  ui       X11                         
    ##  language (EN)                        
    ##  collate  en_US.UTF-8                 
    ##  ctype    en_US.UTF-8                 
    ##  tz       America/Chicago             
    ##  date     2021-02-02                  
    ## 
    ## ─ Packages ───────────────────────────────────────────────────────────────────
    ##  package     * version date       lib source        
    ##  assertthat    0.2.1   2019-03-21 [1] CRAN (R 4.0.2)
    ##  cli           2.1.0   2020-10-12 [1] CRAN (R 4.0.2)
    ##  crayon        1.3.4   2017-09-16 [1] CRAN (R 4.0.2)
    ##  digest        0.6.27  2020-10-24 [1] CRAN (R 4.0.2)
    ##  evaluate      0.14    2019-05-28 [1] CRAN (R 4.0.1)
    ##  fansi         0.4.1   2020-01-08 [1] CRAN (R 4.0.2)
    ##  glue          1.4.2   2020-08-27 [1] CRAN (R 4.0.2)
    ##  htmltools     0.5.0   2020-06-16 [1] CRAN (R 4.0.2)
    ##  knitr         1.30    2020-09-22 [1] CRAN (R 4.0.2)
    ##  magrittr      1.5     2014-11-22 [1] CRAN (R 4.0.2)
    ##  rlang         0.4.8   2020-10-08 [1] CRAN (R 4.0.2)
    ##  rmarkdown     2.5     2020-10-21 [1] CRAN (R 4.0.3)
    ##  sessioninfo   1.1.1   2018-11-05 [1] CRAN (R 4.0.2)
    ##  stringi       1.5.3   2020-09-09 [1] CRAN (R 4.0.2)
    ##  stringr       1.4.0   2019-02-10 [1] CRAN (R 4.0.2)
    ##  withr         2.3.0   2020-09-22 [1] CRAN (R 4.0.2)
    ##  xfun          0.19    2020-10-30 [1] CRAN (R 4.0.2)
    ##  yaml          2.2.1   2020-02-01 [1] CRAN (R 4.0.2)
    ## 
    ## [1] /Library/Frameworks/R.framework/Versions/4.0/Resources/library
