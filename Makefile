
.PHONY: all
all: index.html syntax.html

index.html: README.md head.html foot.html
	cp head.html index.html
	./Markdown.pl README.md >> index.html
	cat foot.html >> index.html

syntax.html: syntax.txt syntax-head.html foot.html
	cp syntax-head.html syntax.html
	./Markdown.pl syntax.txt >> syntax.html
	cat foot.html >> syntax.html

