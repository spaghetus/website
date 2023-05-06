all:
# markdown

/mut/page-built/%.md.html: page-src/%.md
	mkdir -p $(shell dirname $@)
	pandoc --quiet -f markdown -t html $< -o $@

/mut/page-built/%.md.pdf: page-src/%.md
	mkdir -p $(shell dirname $@)
	pandoc --quiet -V geometry:margin=1in -f markdown -t pdf $< -o $@

/mut/page-built/%.md.epub: page-src/%.md
	mkdir -p $(shell dirname $@)
	pandoc --quiet -f markdown -t epub $< -o $@

/mut/page-built/%.md.txt: page-src/%.md
	mkdir -p $(shell dirname $@)
	pandoc --quiet -f markdown -t plain $< -o - \
		| sed "s/’/'/" \
		| sed "s/“/\"/" \
		| sed "s/”/\"/" \
		| sed -z "s/\s\s+/. /gm" \
		| sed -z "s/\s/ /gm" \
		> $@

/mut/page-built/%.md.wav: /mut/page-built/%.md.txt
	mkdir -p $(shell dirname $@)
	cat $< | mimic3 --voice en_US/cmu-arctic_low\
		--speaker $(shell cat /root/.local/share/mycroft/mimic3/voices/en_US/cmu-arctic_low/speakers.txt\
			| shuf | head -n1) > $@

# Jupyter
/mut/page-built/%.ipynb.html: page-src/%.ipynb
	mkdir -p $(shell dirname $@)
	pandoc --quiet -f ipynb -t html $< -o $@

/mut/page-built/%.ipynb.pdf: page-src/%.ipynb
	mkdir -p $(shell dirname $@)
	pandoc --quiet -V geometry:margin=1in -f ipynb -t pdf $< -o $@

/mut/page-built/%.ipynb.epub: page-src/%.ipynb
	mkdir -p $(shell dirname $@)
	pandoc --quiet -f ipynb -t epub $< -o $@

/mut/page-built/%.ipynb.txt: page-src/%.ipynb
	mkdir -p $(shell dirname $@)
	pandoc --quiet -f ipynb -t plain $< -o - \
		| sed "s/’/'/" \
		| sed "s/“/\"/" \
		| sed "s/”/\"/" \
		| sed -z "s/\s\s+/. /gm" \
		| sed -z "s/\s/ /gm" \
		> $@

/mut/page-built/%.ipynb.wav: /mut/page-built/%.ipynb.txt
	mkdir -p $(shell dirname $@)
	cat $< | mimic3 --voice en_US/cmu-arctic_low\
		--speaker $(shell cat /root/.local/share/mycroft/mimic3/voices/en_US/cmu-arctic_low/speakers.txt\
			| shuf | head -n1) > $@