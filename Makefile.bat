xelatex.exe -synctex=1 -interaction=nonstopmode -output-driver="xdvipdfmx -V 7" "dissertation".tex
biber.exe "dissertation"
xelatex.exe -synctex=1 -interaction=nonstopmode -output-driver="xdvipdfmx -V 7" "dissertation".tex

REM "All done folks!"
