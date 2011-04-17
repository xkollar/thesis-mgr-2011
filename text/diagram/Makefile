GENERATED=gen
TARGETS=kinds.tex

all: $(TARGETS)

kinds.tex: kinds.dot
	dot2tex --nominsize --autosize -tmath --figonly kinds.dot > kinds.tex

generate: $(TARGETS)
	mkdir -p $(GENERATED)
	cp $(TARGETS) $(GENERATED)
