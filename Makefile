bs4:
	Rscript -e 'library(bookdown); render_book("index.Rmd", bookdown::bs4_book(theme = bs4_book_theme(primary = "#00A064")))'
pdfbook:
	Rscript -e 'library(bookdown); render_book("index.Rmd", "pdf_book")'
gitbook:
	Rscript -e 'library(bookdown); render_book("index.Rmd", "gitbook")'
clean:
	Rscript -e 'bookdown::clean_book()';\
	rm -rf _bookdown_files
publish:
	git add .;\
	git commit -m 'add';\
	git push -u origin master
