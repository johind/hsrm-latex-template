MAIN = main
TEX = $(MAIN).tex
GENERATED = $(MAIN).bbl $(MAIN).bbl-SAVE-ERROR $(MAIN).lol

.PHONY: all clean distclean

all:
	latexmk -pdf -interaction=nonstopmode -halt-on-error $(TEX)

clean:
	latexmk -c $(TEX)
	$(RM) $(GENERATED)

distclean:
	latexmk -C $(TEX)
	$(RM) $(GENERATED)
