all:

/mut/page-built/%.md.html: page-src/%.md
	mkdir -p /mut/page-built
	pandoc -f markdown -t html $< -o $@

/mut/page-built/%.md.pdf: page-src/%.md
	mkdir -p /mut/page-built
	pandoc -V geometry:margin=1in -f markdown -t pdf $< -o $@