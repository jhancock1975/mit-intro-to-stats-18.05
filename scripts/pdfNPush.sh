#!/bin/bash
../scripts/pdfBib.sh $1
git add .
git commit -m "compile pdf"
git push -u origin slides5

