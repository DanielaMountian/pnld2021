all:
	latexmk -lualatex $(file).tex	
	open $(file).pdf &
all-slides:
	for l in *.tex; do \
		latexmk -lualatex ${l}; \
	done
png:
	pdftoppm $(file).pdf ./img/$(file) -png -r 300
clean:
	-rm *aux *log *tui *nav *out *snm *toc *.4ct *.4tc *.html *.css *.dvi *.epub *.lg *.ncx *.xref *.tmp *.idv *.opf *.fdb_latexmk *.fls
git:
	git add .
	git commit -m "mudança pequena"
	git push

