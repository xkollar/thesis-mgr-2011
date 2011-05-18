NAME=mgr-thesis

BIBTEX=bibtex -terse
PDFLATEX=pdflatex -interaction=batchmode

all:$(NAME).pdf

debug:
	pdflatex $(NAME)
	bibtex   $(NAME)

final:
	$(PDFLATEX) $(NAME)
	$(BIBTEX)   $(NAME)
	$(PDFLATEX) $(NAME)
	$(PDFLATEX) $(NAME)

$(NAME).pdf: $(NAME).tex bibliography.bib
	$(PDFLATEX) $(NAME)
	$(BIBTEX)   $(NAME)

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

