minify ?= ./node_modules/uglify-js/bin/uglifyjs
lint ?= jshint

all: d3.pcpGeoJson.min.js

%.min.js: %.js
	$(minify) $< > $@

lint:
	$(lint) --verbose d3.pcpGeoJson.js

clean:
	rm -f *.min.js