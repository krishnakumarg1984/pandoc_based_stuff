# Run Pandoc to convert to PDF & view in zathura
.PHONY: pdfs
pdfs: habits.pdf kalman_battery.pdf

habits.pdf : habits.md
	pandoc --slide-level=2 --filter pandoc-numbering --filter pandoc-tablenos --filter pandoc-fignos --filter pandoc-eqnos -t beamer habits.md -V theme:Warsaw --normalize --smart --incremental --toc -s -o habits.pdf
	zathura habits.pdf &

habits.pdf : kalman_battery.md
	pandoc --slide-level=2 --filter pandoc-numbering --filter pandoc-tablenos --filter pandoc-fignos --filter pandoc-eqnos -t beamer kalman_battery.md -V theme:CambridgeUS --normalize --smart --incremental --toc -s -o kalman_battery.pdf
	zathura kalman_battery.pdf &