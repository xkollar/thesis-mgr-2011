GENERATED=gen
TARGETS=kinds_star1.tex kinds_star2.tex kinds_star_star.tex num_intersection.tex

DOT2TEX=dot2tex --nominsize --autosize -tmath --figonly --docpreamble="`cat ../someprelude.tex`"

all: $(TARGETS)

kinds_star1.tex: kinds_star1.dot
	$(DOT2TEX) $< > $@

kinds_star2.tex: kinds_star2.dot
	$(DOT2TEX) $< > $@

kinds_star_star.tex: kinds_star_star.dot
	$(DOT2TEX) $< > $@

num_intersection.tex: num_intersection.dot
	$(DOT2TEX) $< > $@

generate: $(TARGETS)
	mkdir -p $(GENERATED)
	cp $(TARGETS) $(GENERATED)

clean:
	rm $(TARGETS)
