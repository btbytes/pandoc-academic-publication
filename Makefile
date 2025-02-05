html-default:
	pandoc --filter pandoc-citeproc --biblio paper.bib -o paper.html -t html5 -c assets/fonts/cm/cm.css -c assets/css/academic-pub.css --template assets/templates/academic-html5.template --highlight-style pygments --toc --standalone paper.md

html-ieee:
	pandoc --filter pandoc-citeproc --biblio paper.bib -o paper.html -t html5 -c assets/fonts/cm/cm.css -c assets/css/academic-pub.css -c assets/css/ieee.css --template assets/templates/academic-html5.template --highlight-style pygments --toc --standalone paper.md

pdf-ieee:
	pandoc --filter pandoc-citeproc --biblio paper.bib -o paper.pdf -t latex --highlight-style pygments --standalone --variable documentclass=assets/latex/ieee paper.md


.PHONY:
clean:
	rm -f paper.html
	rm -f paper.pdf
