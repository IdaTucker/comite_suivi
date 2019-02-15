REPDIR = .
LTF = main
CLEAN = $(wildcard *.aux *.bbl *.blg *.log *.out *.pdf *.toc *.dvi *.synctex.gz)
TEX = $(REPDIR)/tex
DIRS = $(REPDIR) $(TEX)

.PHONY : all clean

all : ltf

ltf:
	@(cd $(REPDIR) \
		&& pdflatex $(LTF) && bibtex $(LTF) \
		&& pdflatex $(LTF) && pdflatex $(LTF))
	@(./.pdf_opener.sh $(LTF).pdf &)
	
clean:
	@(cd $(REPDIR) && rm -f \
		$(CLEAN) )

help :
	@(echo "Usage :" )
	@(echo "  make [all]\t\tAll pdf files")
	@(echo "  make ltf\t\tLossy Trapdoor Functions from CL assumptions")
	@(echo "  make clean\t\tRemove all files generated for compiling pdf files")
	@(echo "  make help\t\tDisplay this help")
