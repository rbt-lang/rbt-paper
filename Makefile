.PHONY: clean

SOURCES = $(wildcard *.tex)

rbt-paper.pdf: ${SOURCES}
	pdflatex rbt-paper.tex

clean:
	rm -f *.log *.aux *.pdf

