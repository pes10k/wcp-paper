release:
	make clean
	make paper.pdf

zip:
	/bin/rm -f *.aux *.bbl *.blg *.log *~
	(cd ..;zip latex-templates.zip latex-templates/*)

paper.pdf: paper.tex combined.bib
	pdflatex paper
	bibtex paper
	pdflatex paper
	pdflatex paper

clean:
	rm -f *.aux *.bbl *.blg *.log paper.pdf
