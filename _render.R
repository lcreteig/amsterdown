setwd("inst/rmarkdown/templates/thesis/skeleton") # change working directory to where the book lives
file.rename("skeleton.Rmd", "index.Rmd") # main file needs to be named index.html for the website to show correctly
# make the book; move to "docs" folder in root
bookdown::render_book("index.Rmd", output_format = 'bookdown::pdf_book', output_dir = "../../../../../docs") # pdf first, so it's linked in the html
bookdown::render_book("index.Rmd", output_format = 'bookdown::gitbook', output_dir = "../../../../../docs")

