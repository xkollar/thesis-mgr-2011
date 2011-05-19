GENERATED=gen
TARGETS=kinds_star1.tex kinds_star2.tex kinds_star_star.tex num_intersection.tex

DOT2TEX=dot2tex --usepdflatex --nominsize -tmath --figonly --docpreamble="`cat ../someprelude.tex`"
DOT2TEXFULL=$(DOT2TEX) --autosize

all: $(TARGETS)

kinds_star1.tex: kinds_star1.dot
	$(DOT2TEXFULL) $< > $@

kinds_star2.tex: kinds_star2.dot
	$(DOT2TEX) --preproc $< | gvpr -c -f rgrid.gvpr \
		| ./dot2tex.py --prog=neato --nominsize -tmath --figonly --docpreamble="`cat ../someprelude.tex`" \
		> $@

kinds_star_star.tex: kinds_star_star.dot
	$(DOT2TEXFULL) $< > $@

num_intersection.tex: num_intersection.dot
	$(DOT2TEXFULL) $< > $@

generate: $(TARGETS)
	mkdir -p $(GENERATED)
	cp $(TARGETS) $(GENERATED)

clean:
	rm $(TARGETS)
