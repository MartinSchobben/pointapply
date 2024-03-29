
# pointapply

<!-- badges: start -->

[![R-CMD-check](https://github.com/MartinSchobben/pointapply/workflows/R-CMD-check/badge.svg)](https://github.com/MartinSchobben/pointapply/actions)
[![Codecov test
coverage](https://codecov.io/gh/MartinSchobben/pointapply/branch/master/graph/badge.svg)](https://app.codecov.io/gh/MartinSchobben/pointapply?branch=master)
[![DOI](https://zenodo.org/badge/340077309.svg)](https://zenodo.org/badge/latestdoi/340077309)
<!-- badges: end -->

The R package *pointapply* contains the code and data to reconstruct the
publication: Martin Schobben, Michiel Kienhuis, and Lubos Polerecky.
2021. *New methods to detect isotopic heterogeneity with Secondary Ion
Mass Spectrometry*, preprint on [Eartharxiv](https://eartharxiv.org/).

This paper assesses the performance of the application of the `diag_R()`
function of the sister package *point* (Schobben 2022) in detecting
isotope heterogeneity in natural substrates.

# Data

The data is stored on the
[Zenodo](https://doi.org/10.5281/zenodo.4580159) repository *pointdata*.

The data can be directly downloaded with `download_point()`, which is
build around *zen4R* (Blondel 2022).

``` r
# Download
download_point()
```

# Render the paper

Use the function `render_paper()` and specify the directory to save the
paper. Make sure to have latex installed on your system. Check e.g.,
<https://yihui.org/tinytex/> for a light weight LaTeX version.

``` r
# install.packages('tinytex')
# Knit
render_paper(title = "Schobbenetal_SIMS_method", output_dir = "mydir")
```

## Credits

The construction of the R (R Core Team 2022) package *pointapply* and
associated documentation was aided by the packages; *devtools* (Wickham,
Hester, et al. 2021), *roxygen2* (Wickham, Danenberg, et al. 2021),
*testthat* (Wickham 2022), *vdiffr* (Henry et al. 2022), *cpp11* (Hester
and François 2021), and *fs* (Hester, Wickham, and Csárdi 2021).

The book: *R packages: organize, test, document, and share your code*,
by Wickham (2015) is a great guide for learning how to build packages.

In addition, this package relies on a set of external packages from the
tidyverse universe, including: *dplyr* (Wickham et al. 2022), *tidyr*
(Wickham and Girlich 2022), *tibble* (Müller and Wickham 2021),
*stringr* (Wickham 2019), *magrittr* (Bache and Wickham 2022), and
*purrr* (Henry and Wickham 2020) for data manipulation.

Data plots are constructed with *ggplot2* (Wickham, Chang, et al. 2021;
Wickham 2016), *ggrepel* (Slowikowski 2021), *RColorBrewer* (Neuwirth
2022), and *scales* (Wickham and Seidel 2022)

The package *rlang* (Henry and Wickham 2022) was used for tidy
evaluation.

Some specialised packages where used, notably; *readmat* for loading the
matlab LANS files (**readmat?**) and *MASS* (Ripley 2022; Venables and
Ripley 2002) for 2D density estimates.

The data download from Zenodo with an api is facilitated by *zen4R*
(Blondel 2022).

The documentation and paper was written with *knitr* (Xie 2022b, 2014,
2015), *rmarkdown* (Allaire, Xie, McPherson, et al. 2022; Xie, Allaire,
and Grolemund 2018; Xie, Dervieux, and Riederer 2020), *bookdown* (Xie
2022a, 2016), *pkgdown* (Wickham, Hesselberth, and Salmon 2022),
*rticles* (Allaire, Xie, Dervieux, et al. 2022) and *bibtex* (Francois
2020).

## Installation

You can install the development version from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("MartinSchobben/pointapply", build_vignettes = TRUE)
```

## Reconstruct the paper from scratch

The data figures can be constructed with the functions contain in this
package. The following vignettes detail all these operations in a
coherent story line.

**Data:**

-   Synthetic data for validation of model performance and Figure 2 and
    3 and Supplementary Figure 1 (`vignette("simulation")`).
-   Real data reading and processing and Supplementary Figure 2
    (`vignette("data")`).

Because of the excessive file-sizes of ion count data, the data is
stored externally on [Zenodo](https://doi.org/10.5281/zenodo.4564170),
and can be accessed with the function `download_point()`.

**Figures:**

-   Evaluation of model performance; Figures 4 and 5
    (`vignette("performance")`).
-   Raster images and scatter plots of real SIMS
    <sup>13</sup>C/<sup>12</sup>C analyses; Figures 6–8 and
    Supplementary Figures 7 and 8 (`vignette("raster")`).
-   Regression diagnostics; Supplementary Figures 3–5
    (`vignette("regression")`).
-   Accuracy of SIMS isotope analysis; Supplementary Figures 3 and 7
    (`vignette("accuracy")`).

# References

<div id="refs" class="references csl-bib-body hanging-indent">

<div id="ref-rticles" class="csl-entry">

Allaire, JJ, Yihui Xie, Christophe Dervieux, R Foundation, Hadley
Wickham, Journal of Statistical Software, Ramnath Vaidyanathan, et al.
2022. *Rticles: Article Formats for r Markdown*.
<https://github.com/rstudio/rticles>.

</div>

<div id="ref-rmarkdown" class="csl-entry">

Allaire, JJ, Yihui Xie, Jonathan McPherson, Javier Luraschi, Kevin
Ushey, Aron Atkins, Hadley Wickham, Joe Cheng, Winston Chang, and
Richard Iannone. 2022. *Rmarkdown: Dynamic Documents for r*.
<https://CRAN.R-project.org/package=rmarkdown>.

</div>

<div id="ref-magrittr" class="csl-entry">

Bache, Stefan Milton, and Hadley Wickham. 2022. *Magrittr: A
Forward-Pipe Operator for r*.
<https://CRAN.R-project.org/package=magrittr>.

</div>

<div id="ref-zen4R" class="csl-entry">

Blondel, Emmanuel. 2022. *zen4R: Interface to Zenodo REST API*.
<https://github.com/eblondel/zen4R>.

</div>

<div id="ref-bibtex" class="csl-entry">

Francois, Romain. 2020. *Bibtex: Bibtex Parser*.
<https://github.com/romainfrancois/bibtex>.

</div>

<div id="ref-vdiffr" class="csl-entry">

Henry, Lionel, Thomas Lin Pedersen, T Jake Luciani, Matthieu Decorde,
and Vaudor Lise. 2022. *Vdiffr: Visual Regression Testing and Graphical
Diffing*. <https://CRAN.R-project.org/package=vdiffr>.

</div>

<div id="ref-purrr" class="csl-entry">

Henry, Lionel, and Hadley Wickham. 2020. *Purrr: Functional Programming
Tools*. <https://CRAN.R-project.org/package=purrr>.

</div>

<div id="ref-rlang" class="csl-entry">

———. 2022. *Rlang: Functions for Base Types and Core r and Tidyverse
Features*. <https://CRAN.R-project.org/package=rlang>.

</div>

<div id="ref-cpp11" class="csl-entry">

Hester, Jim, and Romain François. 2021. *Cpp11: A c++11 Interface for
r’s c Interface*. <https://CRAN.R-project.org/package=cpp11>.

</div>

<div id="ref-fs" class="csl-entry">

Hester, Jim, Hadley Wickham, and Gábor Csárdi. 2021. *Fs: Cross-Platform
File System Operations Based on Libuv*.
<https://CRAN.R-project.org/package=fs>.

</div>

<div id="ref-tibble" class="csl-entry">

Müller, Kirill, and Hadley Wickham. 2021. *Tibble: Simple Data Frames*.
<https://CRAN.R-project.org/package=tibble>.

</div>

<div id="ref-RColorBrewer" class="csl-entry">

Neuwirth, Erich. 2022. *RColorBrewer: ColorBrewer Palettes*.
<https://CRAN.R-project.org/package=RColorBrewer>.

</div>

<div id="ref-rversion" class="csl-entry">

R Core Team. 2022. *R: A Language and Environment for Statistical
Computing*. Vienna, Austria: R Foundation for Statistical Computing.
<https://www.R-project.org/>.

</div>

<div id="ref-MASS" class="csl-entry">

Ripley, Brian. 2022. *MASS: Support Functions and Datasets for Venables
and Ripley’s MASS*. <http://www.stats.ox.ac.uk/pub/MASS4/>.

</div>

<div id="ref-point" class="csl-entry">

Schobben, Martin. 2022. *Point: Reading, Processing, and Analysing Raw
Ion Count Data*. <https://martinschobben.github.io/point/>.

</div>

<div id="ref-ggrepel" class="csl-entry">

Slowikowski, Kamil. 2021. *Ggrepel: Automatically Position
Non-Overlapping Text Labels with Ggplot2*.
<https://github.com/slowkow/ggrepel>.

</div>

<div id="ref-MASS2002" class="csl-entry">

Venables, W. N., and B. D. Ripley. 2002. *Modern Applied Statistics with
s*. Fourth. New York: Springer. <https://www.stats.ox.ac.uk/pub/MASS4/>.

</div>

<div id="ref-Wickham2015" class="csl-entry">

Wickham, Hadley. 2015. *R Packages: Organize, Test, Document, and Share
Your Code*. O’Reilly Media, Inc. <https://r-pkgs.org/>.

</div>

<div id="ref-ggplot22016" class="csl-entry">

———. 2016. *Ggplot2: Elegant Graphics for Data Analysis*.
Springer-Verlag New York. <https://ggplot2.tidyverse.org>.

</div>

<div id="ref-stringr" class="csl-entry">

———. 2019. *Stringr: Simple, Consistent Wrappers for Common String
Operations*. <https://CRAN.R-project.org/package=stringr>.

</div>

<div id="ref-testthat" class="csl-entry">

———. 2022. *Testthat: Unit Testing for r*.
<https://CRAN.R-project.org/package=testthat>.

</div>

<div id="ref-ggplot2" class="csl-entry">

Wickham, Hadley, Winston Chang, Lionel Henry, Thomas Lin Pedersen,
Kohske Takahashi, Claus Wilke, Kara Woo, Hiroaki Yutani, and Dewey
Dunnington. 2021. *Ggplot2: Create Elegant Data Visualisations Using the
Grammar of Graphics*. <https://CRAN.R-project.org/package=ggplot2>.

</div>

<div id="ref-roxygen2" class="csl-entry">

Wickham, Hadley, Peter Danenberg, Gábor Csárdi, and Manuel Eugster.
2021. *Roxygen2: In-Line Documentation for r*.
<https://CRAN.R-project.org/package=roxygen2>.

</div>

<div id="ref-dplyr" class="csl-entry">

Wickham, Hadley, Romain François, Lionel Henry, and Kirill Müller. 2022.
*Dplyr: A Grammar of Data Manipulation*.
<https://CRAN.R-project.org/package=dplyr>.

</div>

<div id="ref-tidyr" class="csl-entry">

Wickham, Hadley, and Maximilian Girlich. 2022. *Tidyr: Tidy Messy Data*.
<https://CRAN.R-project.org/package=tidyr>.

</div>

<div id="ref-pkgdown" class="csl-entry">

Wickham, Hadley, Jay Hesselberth, and Maëlle Salmon. 2022. *Pkgdown:
Make Static HTML Documentation for a Package*.
<https://CRAN.R-project.org/package=pkgdown>.

</div>

<div id="ref-devtools" class="csl-entry">

Wickham, Hadley, Jim Hester, Winston Chang, and Jennifer Bryan. 2021.
*Devtools: Tools to Make Developing r Packages Easier*.
<https://CRAN.R-project.org/package=devtools>.

</div>

<div id="ref-scales" class="csl-entry">

Wickham, Hadley, and Dana Seidel. 2022. *Scales: Scale Functions for
Visualization*. <https://CRAN.R-project.org/package=scales>.

</div>

<div id="ref-knitr2014" class="csl-entry">

Xie, Yihui. 2014. “Knitr: A Comprehensive Tool for Reproducible Research
in R.” In *Implementing Reproducible Computational Research*, edited by
Victoria Stodden, Friedrich Leisch, and Roger D. Peng. Chapman;
Hall/CRC. <http://www.crcpress.com/product/isbn/9781466561595>.

</div>

<div id="ref-knitr2015" class="csl-entry">

———. 2015. *Dynamic Documents with R and Knitr*. 2nd ed. Boca Raton,
Florida: Chapman; Hall/CRC. <https://yihui.org/knitr/>.

</div>

<div id="ref-bookdown2016" class="csl-entry">

———. 2016. *Bookdown: Authoring Books and Technical Documents with R
Markdown*. Boca Raton, Florida: Chapman; Hall/CRC.
<https://bookdown.org/yihui/bookdown>.

</div>

<div id="ref-bookdown" class="csl-entry">

———. 2022a. *Bookdown: Authoring Books and Technical Documents with r
Markdown*. <https://CRAN.R-project.org/package=bookdown>.

</div>

<div id="ref-knitr" class="csl-entry">

———. 2022b. *Knitr: A General-Purpose Package for Dynamic Report
Generation in r*. <https://yihui.org/knitr/>.

</div>

<div id="ref-rmarkdown2018" class="csl-entry">

Xie, Yihui, J. J. Allaire, and Garrett Grolemund. 2018. *R Markdown: The
Definitive Guide*. Boca Raton, Florida: Chapman; Hall/CRC.
<https://bookdown.org/yihui/rmarkdown>.

</div>

<div id="ref-rmarkdown2020" class="csl-entry">

Xie, Yihui, Christophe Dervieux, and Emily Riederer. 2020. *R Markdown
Cookbook*. Boca Raton, Florida: Chapman; Hall/CRC.
<https://bookdown.org/yihui/rmarkdown-cookbook>.

</div>

</div>
