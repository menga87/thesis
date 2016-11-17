# ---------------------------------------------------------
# type "make" command in Unix to create the PDF file 
# ---------------------------------------------------------

# Main filename
FILE=dissertation

# ---------------------------------------------------------

all:
	xelatex -synctex=1 -interaction=nonstopmode -output-driver="xdvipdfmx -V 7" "${FILE}".tex
# 	xelatex -synctex=1 -interaction=nonstopmode -output-driver="xdvipdfmx -V 7" "${FILE}".tex
	biber ${FILE}
	xelatex -synctex=1 -interaction=nonstopmode -output-driver="xdvipdfmx -V 7" "${FILE}".tex
#	xelatex -synctex=1 -interaction=nonstopmode -output-driver="xdvipdfmx -V 7" "${FILE}".tex	
#
# 	pdflatex  ${FILE} -interaction=nonstopmode
# 	makeindex $(FILE).nlo -s nomencl.ist -o $(FILE).nls
# 	makeindex $(FILE).glo -s $(FILE).ist -o $(FILE).gls -t $(FILE).glg
# 	bibtex ${FILE} -interaction=nonstopmode
# 	pdflatex  ${FILE} -interaction=nonstopmode
# 	pdflatex  ${FILE} -interaction=nonstopmode

once:
	xelatex -synctex=1 -interaction=nonstopmode -output-driver="xdvipdfmx -V 7" "${FILE}".tex
	
clean:
	(rm -rf *.aux *.bbl *.blg *.glg *.glo *.gls *.ilg *.ist *.lof *.log *.lot *.nlo *.nls *.out *.toc *.bcf *.tdo *.loa *-blx.bib *.run.xml *.synctex.gz*)

veryclean:
	make clean
	rm -f *~ *.*%
	rm -f $(FILE).pdf $(FILE).ps

