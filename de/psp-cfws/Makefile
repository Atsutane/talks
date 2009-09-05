all: pdf-slides

pdf-slides: *-slides.tex
	pdflatex -output-format=dvi *-slides.tex
	pdflatex -output-format=dvi *-slides.tex
	dvips *-slides.dvi
	ps2pdf *-slides.ps

clean:
	rm -f *.aux *.log *.nav *.out *.snm *.toc *.ps *.dvi *.bm

