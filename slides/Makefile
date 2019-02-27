REPDIR = .
CLEAN = $(wildcard *.aux *.nav *.log *.out *.pdf *.toc *.dvi *.vrb *.toc *.snm *.blg *.bbl *.synctex.gz *.ps)

.PHONY : all clean

all : demo

demo:
	@(cd $(REPDIR) \
		&& pdflatex  slides_comite_suivi && bibtex  slides_comite_suivi \
		&& lualatex  slides_comite_suivi && lualatex  slides_comite_suivi)
	
clean:
	@(cd $(REPDIR) && rm -f \
		$(CLEAN) )

