#############################
# CONFIGURATION

#
#############################
# MAKEFILE
#############################
all: pdf-slides handout

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
	rm -f handout-sections/*

handout: prepare-slides cobol-handout.head.tex
	pdflatex -output-format=pdf *-handout.tex
	pdflatex -output-format=pdf *-handout.tex

prepare-slides: handout-sections
	cp slides/*.tex handout-sections/
	sed -i "s/begin{slide}/section*/g" handout-sections/*.tex
	sed -i "s/end{slide}//g" handout-sections/*.tex
	cat cobol-handout.head.tex > cobol-handout.tex
	cat handout-sections/entstehung.tex >> cobol-handout.tex
	cat handout-sections/geschichte.tex >> cobol-handout.tex
	cat handout-sections/procontra.tex >> cobol-handout.tex
	cat handout-sections/syntax.tex >> cobol-handout.tex
	cat handout-sections/quellen.tex >> cobol-handout.tex
	echo -e "\\section*{Code-Beispiel: Fakultätsberechnung}\n\\lstinputlisting[]{samples/faculty_handout.sample}\n\\\end{document}" >> cobol-handout.tex

handout-sections:
	mkdir handout-sections
