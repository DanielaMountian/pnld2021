all:
	latexmk -xelatex $(file).tex
	evince $(file).pdf &
	
clean:
	-rm *aux *log *tui *toc *.4ct *.4tc *.html *.css *.dvi *.epub *.lg *.ncx *.xref *.tmp *.idv *.opf *.fdb_latexmk *.fls
