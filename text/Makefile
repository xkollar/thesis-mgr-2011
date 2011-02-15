NAME=mgr-thesis

all:$(NAME).pdf

$(NAME).pdf: $(NAME).tex
	pdflatex $(NAME).tex

$(NAME).bbl: bibliography.bib
	bibtex $(NAME).aux

clean:
	-rm *.*pk
	-rm *.aux
	-rm *.log
	-rm *.pdf
	-rm *.tfm
	-rm *.toc

cleanall:
	rm *.{aux,bbl,blg,clo,cls,dvi,lof,log,out,pdf,ps,toc,utf8.txt,[0-9]*pk}

