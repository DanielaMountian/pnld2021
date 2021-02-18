all:
#	-cp ../*.tex .
#	-cp ../fichatecnica.sty .
	tex4ebook -i -f epub3 -c tex4ht EBOOK.tex 	
epub-normal:	
	tex4ebook -i -c tex4ht EBOOK.tex 	
mobi:
	ebook-convert EBOOK.epub EBOOK.mobi
EBOOK-check:
	epubcheck EBOOK.epub
clean:
	-rm *aux *log *tui *toc *.4ct *.4tc *.html *.css *.dvi *.epub *.lg *.ncx *.xref *.tmp *.idv *.opf *.png  
	-rm -rf EBOOK-epub
	-rm -rf EBOOK-epub3
	-rm -rf EBOOK-mobi 
