#!/bin/bash
if [ $# -ne 1]; then
	echo "usage pdfNPush.sh <<branchname>>";
	exit 0;
fi
branch_name=$1
~/scripts/pdfBib.sh $1
git add .
git commit -m "compile pdf"
git push -u origin $branch_name

