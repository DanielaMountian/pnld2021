all:
	git log -1 --date=short --format=format:'\newcommand{\RevisionInfo}{%h}' > gitrevisioninfo.sty
	latexmk -lualatex LIVRO.tex	
clean:
	-rm *aux *log *tui *toc *.4ct *.4tc *.html *.css *.dvi *.epub *.lg *.ncx *.xref *.tmp *.idv *.opf *.png  *.fdb_latexmk *.fls
pdf:
	git log -1 --date=short --format=format:'\newcommand{\RevisionInfo}{%h}' > gitrevisioninfo.sty
	latexmk -lualatex LIVRO.tex	
	evince LIVRO.pdf
rename:
	mv LIVRO.pdf $(notdir $(patsubst %/,%,$(CURDIR))).pdf
git:
	git add .
	git commit -m "mudança pequena"
	git push

