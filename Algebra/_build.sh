#!/bin/sh

set -ev

# Rscript -e "bookdown::render_book('index.Rmd', 'bookdown::gitbook')"
Rscript -e "bookdown::render_book('index.Rmd', 'bookdown::tufte_html_book')"
# Rscript -e "rmarkdown::render('index.Rmd', 'tufte::tufte_book')"
#Rscript -e "bookdown::render_book('index.Rmd', 'bookdown::epub_book')"

