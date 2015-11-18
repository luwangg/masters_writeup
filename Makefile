# You want latexmk to *always* run, because make does not have all the info.
# Also, include non-file targets in .PHONY so they are run regardless of any
# file of the given name existing.
.PHONY: all main.pdf main.gls clean

# The first rule in a Makefile is the one executed by default ("make"). It
# should always be the "all" rule, so that "make" and "make all" are identical.
all: main.pdf

# MAIN LATEXMK RULE
# -pdf tells latexmk to generate PDF directly (instead of DVI).
# -pdflatex="" tells latexmk to call a specific backend with specific options.
# -use-make tells latexmk to call make for generating missing files.
# -interactive=nonstopmode keeps the pdflatex backend from stopping at a
# missing file reference and interactively asking you for an alternative.

main.pdf: 
	latexmk -outdir=out -auxdir=out -pdf -logfilewarninglist -file-line-error -use-make main.tex

main.gls:
	xindy -L english -C utf8 -I xindy -M ./out/main -t ./out/main.glg -o ./out/main.gls ./out/main.glo

clean:
	latexmk -outdir=out -auxdir=out -c
	rm -f ./out/main.*
	rm -f ./out/tex/*.aux
