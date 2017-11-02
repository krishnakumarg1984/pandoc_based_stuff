# Run Pandoc to convert to PDF & view in zathura
.PHONY: pdfs
pdfs: habits.pdf kalman_battery.pdf

habits.pdf : habits.md
	pandoc --slide-level=1 --filter pandoc-numbering --filter pandoc-tablenos --filter pandoc-fignos --filter pandoc-eqnos -t beamer habits.md -V theme:Warsaw --normalize --smart --incremental --toc -s -o habits.pdf
	zathura habits.pdf &

kalman_battery.pdf : kalman_battery.md
	pandoc --filter columnfilter.py --slide-level=1 --filter pandoc-numbering --filter pandoc-tablenos --filter pandoc-fignos --filter pandoc-eqnos -t beamer kalman_battery.md -V theme:Warsaw --normalize --smart --incremental --toc -s -o kalman_battery.pdf --latex-engine=xelatex
	zathura kalman_battery.pdf &