all:

/mut/page-built/%.md.html: page-src/%.md
	mkdir -p $(shell dirname $@)
	pandoc -f markdown -t html $< -o $@

/mut/page-built/%.md.pdf: page-src/%.md
	mkdir -p $(shell dirname $@)
	pandoc -V geometry:margin=1in -f markdown -t pdf $< -o $@

/mut/page-built/%.md.epub: page-src/%.md
	mkdir -p $(shell dirname $@)
	pandoc -f markdown -t epub $< -o $@