#!/bin/bash
rm -f *.{blg,bbl,toc,out,log,aux,pdf,dvi}
rm -f *.mtc*
rm -f tex/*.aux
latex these.tex
bibtex these
latex these.tex
latex these.tex
dvips these.dvi
ps2pdf -dAutoFilterColorImages=false -dAutoFilterGrayImages=false -dColorImageFilter=/FlateEncode -dGrayImageFilter=/FalteEncode -dMonoImageFilter=/FlateEncode these.ps these.pdf

