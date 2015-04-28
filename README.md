masters_writeup
===============

LaTeX code for my M.Sc dissertation

Requirements
============

I am building with pdfTeX 3.14159265-2.6-1.40.15 (TeX Live 2014), but any modern latex package should work.

Optional (recommended): Latexmk, 10 January 2015. Version 4.42


Building
========

If you have latexmk, simply 'make' in the directory to compile a pdf.

If you don't have latexmk:
pdflatex -interactive=nonstopmode main.tex
