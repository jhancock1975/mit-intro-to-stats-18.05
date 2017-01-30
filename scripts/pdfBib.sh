#!/bin/bash
# Script to compile LaTeX to PDF format
# with a bibliography.
# The sequence of commands is given at
# https://www.latex-tutorial.com/tutorials/beginners/latex-bibtex/

fileName=$1
opts="-halt-on-error"

pdflatex $opts $fileName

# get input file name, removing extension
baseFileName=${1%.*}
baseFileName=${baseFileName%%.*}

bibtex $baseFileName

pdflatex $opts $baseFileName
pdflatex $opts $baseFileName
