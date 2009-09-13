#############################
# CONFIGURATION
style_fname="powerdot-arch.sty"
#
#############################
# MAKEFILE
#############################
all: pdf-slides

dvi-slides: *-slides.tex
	pdflatex -output-format=dvi *-slides.tex
	pdflatex -output-format=dvi *-slides.tex
	
ps-slides: dvi-slides
	dvips *-slides.dvi

pdf-slides: ps-slides
	ps2pdf *-slides.ps

clean:
	rm -f *.aux *.log *.nav *.out *.snm *.toc *.ps *.dvi *.bm
	rm -f slides/*.aux

copy-style:
	install -Dm644 $(style_fname) \
		~/.texlive/texmf-dist/tex/latex/powerdot/$(style_fname)

install-style: copy-style
	fmtutil --all
