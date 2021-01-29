all:
	svn propset svn:keywords "Date Id Rev" *.tex
	pdflatex RODOLFO.tex
	evince RODOLFO.pdf
dub:
	svn propset svn:keywords "Date Id Rev" *.tex
	pdflatex RODOLFO.tex	
	pdflatex RODOLFO.tex
	evince RODOLFO.pdf
tags:
	 svn copy ../trunk/ svn://dev.hedra.com.br/hedra/<LIVRO>/tags/release-1.0 -m "primeira edição"

dic:
	@echo "personal_ws-1.1 pt_BR `cat *.tex | aspell -t list | sort | uniq | wc -l` utf-8" > dic.pws
	@cat *.tex | aspell -t list | sort | uniq >> dic.pws
	sh dic.sh
erros:
	@cat *.tex | aspell --extra-dicts=./dic.pws -t list | sort | uniq
corrige:
	clear 
	sh dic.sh
sty:
	pdflatex hedracordel.dtx
	evince hedracordel.pdf

clean:
	rm *.aux *.dvi *.log RODOLFO.pdf *.ps *.toc *.ins 
