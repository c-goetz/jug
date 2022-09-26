all: slides.md style.css
	PLANTUML=/usr/share/java/plantuml/plantuml.jar pandoc -f markdown+pipe_tables+fenced_divs -t revealjs slides.md \
		-o maven-to-bazel.html --self-contained --slide-level=2 --css=style.css \
		--lua-filter=../filters/diagram-generator.lua

