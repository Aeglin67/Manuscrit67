#!/bin/bash
rm -f *.{blg,bbl,toc,out,log,aux,pdf,dvi}
rm -f *.mtc*
rm -f tex/*.aux
latex these.tex
bibtex these
latex these.tex
latex these.tex
dvips these.dvi
ps2pdf these.ps

