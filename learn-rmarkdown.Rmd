---
title: "Learning R Markdown"
author: "Yanett Cepeda"
output: 
  html_document: 
    keep_md: yes
date: "2023-01-22"
---

## Loading data

I'm using the `palmerpenguins` dataset, which we can load through an R package.

CAUTION: The reason I'm encasing all code lines inside verbatim is because of this error that kept coming up while trying to knit to HTML:

`Trying to use CRAN without setting a mirror.`

I tried [this](https://stackoverflow.com/questions/33969024/install-packages-fails-in-knitr-document-trying-to-use-cran-without-setting-a) and [this](https://stackoverflow.com/questions/8475102/set-default-cran-mirror-permanent-in-r), but none worked.

```
install.packages("remotes", repos =" http://cran.us.r-project.org ")
remotes::install_github("allisonhorst/palmerpenguins")
```

```
head(penguins)
```

## Learning some summary functions

There are some useful functions to skim through and compute stats from data sets. Let's try some.

```
install.packages("skimr")
library(skimr)
skim_without_charts(penguins)
```
Another summary function I've recently learned is `summary()`.
What an R beginner like me would do, and actually did, is to just call the function and expect it to work. But R said `Error in summarize(penguins) : could not find function "summarize"`.

- Extra test: <span style="color:blue">*Does this work for making the font color blue?*</span>

Do I really need to memorize what package each function I learn belongs to in order to make my time with R more efficient?

For now, I'll install the dplyr package, which is where `summarize()` belongs to.

```
install.packages("dplyr")
library(dplyr)
```

```
summarize(penguins)
```

Never mind, there seems to be something missing to properly make the data frame *exist* in the same environment/session(?) where Rmd documents are knitted. I need to learn how to "import the data frame into memory in your Rmd document itself", as said by andresrcs [here](https://community.rstudio.com/t/r-markdown-object-not-found/140783/3).

Oh, well. At least I learned some markdown.

![Even learned to add images!](learn-rmarkdown_files/Rmarkdownlogo.png)

## References

Use `citation("NAME OF PACKAGE")` to cite your references:

  Horst AM, Hill AP, Gorman KB (2020). palmerpenguins: Palmer Archipelago (Antarctica)  penguin data. R package version 0.1.0.                                    https://allisonhorst.github.io/palmerpenguins/. doi: 10.5281/zenodo.3960218.

  Csárdi G, Hester J, Wickham H, Chang W, Morgan M, Tenenbaum D (2021).
  _remotes: R Package Installation from Remote Repositories, Including
  'GitHub'_. R package version 2.4.2,
  <https://CRAN.R-project.org/package=remotes>.

  Waring E, Quinn M, McNamara A, Arino de la Rubia E, Zhu H, Ellis S
  (2022). _skimr: Compact and Flexible Summaries of Data_. R package
  version 2.1.5, <https://CRAN.R-project.org/package=skimr>.
  
  Wickham H, François R, Henry L, Müller K (2022). _dplyr: A Grammar of
  Data Manipulation_. R package version 1.0.10,
  <https://CRAN.R-project.org/package=dplyr>.
