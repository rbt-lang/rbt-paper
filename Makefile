.PHONY: clean draft preprint

SOURCES = $(wildcard *.tex) $(wildcard *.bib)

draft: rbt-paper-draft.pdf

preprint: rbt-paper.pdf

%.pdf: ${SOURCES}
	pdflatex $(basename $@)
	bibtex $(basename $@)
	pdflatex $(basename $@)
	pdflatex $(basename $@)

clean:
	rm -f *.log *.aux *.out *.bbl *.blg *.pdf

