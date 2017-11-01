# Run Pandoc to convert to PDF & view in zathura
habits.pdf : habits.md
	pandoc --slide-level=2 --filter pandoc-numbering --filter pandoc-tablenos --filter pandoc-fignos --filter pandoc-eqnos -t beamer habits.md -V theme:Warsaw --normalize --smart --incremental --toc -s -o habits.pdf
	zathura habits.pdf &