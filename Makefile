.PHONY: all preprint pods-draft pdf clean

SOURCES := $(wildcard *.tex) $(wildcard *.bib)
TODAY := $(shell date -I)

all: preprint pods-draft

preprint: rbt-paper.pdf

pods-draft: rbt-paper-pods-draft.pdf

pdf: pdf/rbt-paper-$(TODAY).pdf

pdf/rbt-paper-$(TODAY).pdf: rbt-paper.pdf
	mkdir -p pdf
	cp $< $@

%.pdf: ${SOURCES}
	pdflatex $(basename $@)
	bibtex $(basename $@)
	pdflatex $(basename $@)
	pdflatex $(basename $@)

clean:
	rm -f *.log *.aux *.out *.bbl *.blg *.pdf

