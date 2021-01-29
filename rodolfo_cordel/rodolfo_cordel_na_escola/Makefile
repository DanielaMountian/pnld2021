all:
	pdflatex RODOLFO.tex
	evince RODOLFO.pdf
	rm *.aux *.dvi *.log RODOLFO.pdf *.ps *.toc *.ins 

dub:
	pdflatex RODOLFO.tex
	pdflatex RODOLFO.tex
	evince RODOLFO.pdf
	rm *.aux *.dvi *.log RODOLFO.pdf *.ps *.toc *.ins 

clean:
	rm *.aux *.dvi *.log RODOLFO.pdf *.ps *.toc *.ins 

dic:
	@echo "personal_ws-1.1 pt_BR `cat *.tex | aspell -l pt_BR -t list | sort | uniq | wc -l` utf-8" > dic.pws
	@cat *.tex | aspell -l pt_BR -t list | sort | uniq >> dic.pws
	sh dic.sh

