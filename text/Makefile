NAME=mgr-thesis

all:$(NAME).pdf

$(NAME).pdf: $(NAME).tex $(NAME).bbl
	pdflatex $(NAME)

$(NAME).bbl: bibliography.bib
	pdflatex $(NAME)
	bibtex $(NAME)
	pdflatex $(NAME)
	pdflatex $(NAME)

clean:
	-rm *.*pk
	-rm *.aux
	-rm *.log
	-rm *.pdf
	-rm *.tfm
	-rm *.toc

cleanall:
	-rm *.aux
	-rm *.bbl
	-rm *.blg
	-rm *.dvi
	-rm *.lof
	-rm *.log
	-rm *.out
	-rm *.pdf
	-rm *.ps
	-rm *.toc
	-rm *.utf8.txt
	-rm *.[0-9]*pk

