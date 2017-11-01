# Run Pandoc to convert to PDF & view in zathura
habits.pdf : habits.md
	pandoc --filter pandoc-eqnos -t beamer habits.md -V theme:Warsaw --normalize --smart --incremental -s -o habits.pdf 
	zathura habits.pdf &