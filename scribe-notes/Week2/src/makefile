main.pdf: main.tex scribe.cls
	pdflatex -shell-escape main.tex
	pdflatex -shell-escape main.tex

clean:
	if [ -f *.aux ] ; then rm *.aux ; fi
	if [ -f *.log ] ; then rm *.log ; fi
	if [ -f *.thm ] ; then rm *.thm ; fi
	if [ -f *.pdf ] ; then rm *.pdf ; fi
	if [ -f *.out ] ; then rm *.out ; fi
	if [ -f *~ ]    ; then rm *~ ; fi
	if [ -d _* ]    ; then rm -r _* ; fi

release: main.pdf
	mv main.pdf ../Scribe_notes_Math4CS_Week2.pdf
	make clean
