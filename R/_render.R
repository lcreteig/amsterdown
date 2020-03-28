# N.B. This is for internal use and not distributed with the amsterdown package

rmarkdown::draft('index.Rmd', template = 'thesis', package = 'amsterdown', create_dir = TRUE, edit = FALSE) # create new draft based off template
setwd("index")

target_dir <- "../docs/sample_output"

# pdfs first, so they get linked in the html; move to ouput folder in root
bookdown::render_book("index.Rmd", output_format = 'bookdown::pdf_book', output_dir = target_dir, clean_envir = FALSE)
file.rename(c(file.path(target_dir, "thesis.tex"), file.path(target_dir, "thesis.pdf")),
            c(file.path(target_dir, "thesis_A4.tex"), file.path(target_dir, "thesis_A4.pdf")))

# change yaml in the index.Rmd file, to render to book size
f <- readLines("index.Rmd")
f[grepl("^fontsize:",f)] <- "fontsize: 10pt" # change the line containing the font size yaml parameter
f[grepl("^book_size:",f)] <- "book_size: true" # change the line containing the book_size yaml parameter
writeLines(f, "index.Rmd")

# render 2nd pdf
bookdown::render_book("index.Rmd", output_format = 'bookdown::pdf_book', output_dir = file.path(target_dir), clean_envir = FALSE)
file.rename(c(file.path(target_dir, "thesis.tex"), file.path(target_dir, "thesis.pdf")),
            c(file.path(target_dir, "thesis_B5.tex"), file.path(target_dir, "thesis_B5.pdf")))

# render the html version
bookdown::render_book("index.Rmd", output_format = 'bookdown::gitbook', output_dir = target_dir, clean_envir = FALSE)

# patch html files to point to two pdfs
old_line <- '"download": null'
new_line <- '"download": [["thesis_A4.pdf", "PDF: A4"], ["thesis_B5.pdf", "PDF: book"]]'
for (html_file in list.files(target_dir, ".html", full.names = TRUE)) {
  f <- readLines(html_file)
  f <- gsub(old_line, new_line,f)
  writeLines(f, html_file)
}

#clean-up
setwd("..")
unlink("index", recursive = TRUE) # remove the draft folder
