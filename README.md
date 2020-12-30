
<!-- README.md is generated from README.Rmd. Please edit that file -->

# amsterdown <img src="man/figures/logo.png" align="right" width="120" />

<!-- badges: start -->

[![R-CMD-check](https://github.com/lcreteig/amsterdown/workflows/R-CMD-check/badge.svg)](https://github.com/lcreteig/amsterdown/actions)
[![Lifecycle:
maturing](https://img.shields.io/badge/lifecycle-maturing-blue.svg)](https://www.tidyverse.org/lifecycle/#maturing)
[![Launch Rstudio
Binder](http://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/lcreteig/amsterdown/master?urlpath=rstudio)
[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.3733132.svg)](https://doi.org/10.5281/zenodo.3733132)
<!-- badges: end -->

`amsterdown` is an RMarkdown PhD thesis template for the University of
Amsterdam. It’s based on [my PhD
thesis](https://github.com/lcreteig/thesis) that I wrote with the
[bookdown package](https://bookdown.org/yihui/bookdown/).

(R)Markdown enables you to write a reproducible PhD thesis using the
lightweight and plain-text
[Markdown](https://daringfireball.net/projects/markdown/) formatting. It
forms a great [notebook
style](https://en.wikipedia.org/wiki/Notebook_interface) workflow to
integrate all your text, code, figures, and other output that together
make up your PhD thesis work. Finally, `bookdown` allows you to easily
create an html-version of your thesis that you can host online, and to
harness the power of LaTeX to make a beautifully formatted PDF for
printing your thesis.

This template is an easy way to get started, by:

  - Providing a common and complete structure for the thesis, including
    appendices, acknowledgments, etc.
  - Removing the need to write any LaTeX commands yourself (or at least,
    prolonging it as long as possible).
  - Making sure you adhere to the University of Amsterdam thesis
    requirements.

## Installation

`amsterdown` is not (yet) available on CRAN, so install it from
[GitHub](https://github.com/)
with:

``` r
if(!require(devtools)) install.packages("devtools") # devtools package allows installation of packages from github
devtools::install_github("lcreteig/amsterdown") # install amsterdown from github
```

If you just want a peek at the template without installing it as an R
package, check out the folder with all the files [here on
Github](https://github.com/lcreteig/amsterdown/tree/master/inst/rmarkdown/templates/thesis/skeleton).

Alternatively, to try out using the template without having to install
anything locally, click this button to launch an RStudio session with
everything you need pre-installed: [![Launch Rstudio
Binder](http://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/lcreteig/amsterdown/master?urlpath=rstudio)
Then simply follow the [Usage](#usage) instructions below.

## Usage

If you’ve installed the package and are using
[RStudio](https://rstudio.com/), simply navigate to “File” \> “New File”
\> “R Markdown…” \> “From Template” \> “UvA thesis {amsterdown}”. Use
`index` for the new directory name (feel free to change this after), so
that the main file will be called `index.Rmd`, then hit OK.

Then, create a new RStudio project by going to “File” \> “New Project…”
\> “Existing Directory”, then “Browse…” to the directory you just
created (`index`, or whatever you named it to), and finally hit “Create
Project”.

Click “Build Book” from the Build pane to render the thesis to an output
format of your choosing.

Or, (e.g., if you’re not using the RStudio IDE), run the following lines
of R code to render the template:

``` r
rmarkdown::draft('index.Rmd', # create new draft based off template
                 template = 'thesis', package = 'amsterdown', 
                 create_dir = TRUE, edit = FALSE) 
setwd("index") # navigate to new directory
# render the thesis template to all output formats
bookdown::render_book("index.Rmd", output_format = "all") 
# or
#bookdown::render_book("index.Rmd", output_format = 'bookdown::gitbook') # to render to html
#bookdown::render_book("index.Rmd", output_format = 'bookdown::pdf_book') # to render to PDF
```

See the [package
documentation](https://lcreteig.github.io/amsterdown/articles/amsterdown.html)
for more detailed instructions and further information.

## Example output

The template supports `html` and `pdf` outputs. To inspect the outputs
as produced by the latest version of the template, see here:
[html](https://lcreteig.github.io/amsterdown/sample_output/index.html),
[pdf
(A4)](https://lcreteig.github.io/amsterdown/sample_output/thesis_A4.pdf),
[pdf
(book)](https://lcreteig.github.io/amsterdown/sample_output/thesis_B5.pdf)

## Requirements

If you’re using [RStudio](https://rstudio.com/), all you should have to
do is install the `amsterdown` package (the `bookdown` package will be
installed along with it). You’ll also need a
[LaTeX](https://www.latex-project.org/) distribution to be able to
create the `pdf` outputs. If you don’t have one yet, I’d recommend
[TinyTeX](https://yihui.name/tinytex/).

If you don’t have RStudio installed, you’ll also need to install
[pandoc](https://pandoc.org/) if you don’t have it already (in addition
to a LaTex distribution).

## Attribution

This project was inspired by other RMarkdown PhD thesis templates that
use [`bookdown`](https://bookdown.org/yihui/bookdown/), notably:

  - Chester Ismay’s [thesisdown](https://github.com/ismayc/thesisdown)
    for Reed College
  - Ben Marwick’s [huskydown](https://github.com/benmarwick/huskydown)
    for the University of Washington
  - Ulrik Lyng’s [oxforddown](https://github.com/ulyngs/oxforddown) for
    Oxford University
