all: These.pdf clean

These.pdf: These.tex These.bib
	pdflatex These.tex
	bibtex These
	pdflatex These.tex
	pdflatex These.tex

clean:
	rm -f *.aux
