#!/bin/bash
suffix=".tex"
sheet=$1
qs="gg-q"$sheet".tex"
pdflatex $qs
ansname="gg-a"$sheet".tex"
echo -n "" > $ansname
cat $qs | grep -v "\\iffalse" | grep -v "\\fi$" >> $ansname && pdflatex $ansname

