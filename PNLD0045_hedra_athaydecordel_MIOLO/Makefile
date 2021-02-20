all:
	pdflatex ATHAYDE.tex
	evince ATHAYDE.pdf
	rm *.aux *.dvi *.log ATHAYDE.pdf *.ps *.toc *.ins 

dub:
	pdflatex ATHAYDE.tex
	pdflatex ATHAYDE.tex
	evince ATHAYDE.pdf
	rm *.aux *.dvi *.log ATHAYDE.pdf *.ps *.toc *.ins 

clean:
	rm *.aux *.dvi *.log ATHAYDE.pdf *.ps *.toc *.ins 

dic:
	@echo "personal_ws-1.1 pt_BR `cat *.tex | aspell -l pt_BR -t list | sort | uniq | wc -l` utf-8" > dic.pws
	@cat *.tex | aspell -l pt_BR -t list | sort | uniq >> dic.pws
	sh dic.sh

