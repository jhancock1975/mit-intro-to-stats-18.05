#!/bin/bash
# Script to compile LaTeX to PDF format
# with a bibliography.
# The sequence of commands is given at
# https://www.latex-tutorial.com/tutorials/beginners/latex-bibtex/

fileName=$1

pdflatex $fileName

# get input file name, removing extension
baseFileName=${1%.*}
baseFileName=${baseFileName%%.*}

bibtex $baseFileName

pdflatex $baseFileName
pdflatex $baseFileName
