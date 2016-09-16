.PHONY: clean

SOURCES = $(wildcard *.tex) $(wildcard *.bib)

rbt-paper.pdf: ${SOURCES}
	pdflatex rbt-paper
	bibtex rbt-paper
	pdflatex rbt-paper
	pdflatex rbt-paper

clean:
	rm -f *.log *.aux *.pdf

