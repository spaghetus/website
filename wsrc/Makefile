all:

/mut/page-built/%.md.html: page-src/%.md
	mkdir -p $(shell dirname $@)
	pandoc --quiet -f markdown -t html $< -o $@

/mut/page-built/%.md.pdf: page-src/%.md
	mkdir -p $(shell dirname $@)
	pandoc --quiet -V geometry:margin=1in -f markdown -t pdf $< -o $@

/mut/page-built/%.md.epub: page-src/%.md
	mkdir -p $(shell dirname $@)
	pandoc --quiet -f markdown -t epub $< -o $@