#############################
# CONFIGURATION
style_fname="powerdot-arch.sty"
#
#############################
# MAKEFILE
#############################
all: pdf-slides handout

dvi-slides: replace-special-chars *-slides.tex
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

replace-special-chars:
	sed -i 's+ä+\\"{a}+g' ./*.tex
	sed -i 's+ö+\\"{o}+g' ./*.tex
	sed -i 's+ü+\\"{u}+g' ./*.tex
	sed -i 's+Ä+\\"{A}+g' ./*.tex
	sed -i 's+Ö+\\"{O}+g' ./*.tex
	sed -i 's+Ü+\\"{U}+g' ./*.tex
	sed -i 's+ä+\\"{a}+g' ./**/*.tex
	sed -i 's+ö+\\"{o}+g' ./**/*.tex
	sed -i 's+ü+\\"{u}+g' ./**/*.tex
	sed -i 's+Ä+\\"{A}+g' ./**/*.tex
	sed -i 's+Ö+\\"{O}+g' ./**/*.tex
	sed -i 's+Ü+\\"{U}+g' ./**/*.tex

handout: replace-special-chars
	pdflatex -output-format=pdf *-handout.tex
	pdflatex -output-format=pdf *-handout.tex

