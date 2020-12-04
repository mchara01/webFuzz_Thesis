LATEX	= pdflatex
BIBTEX	= bibtex

TARGET	= thesis

.PHONY: all clean

all: $(TARGET).pdf

$(TARGET).bbl: *.bib
	$(LATEX)	$(TARGET)
	$(BIBTEX)	$(TARGET)

$(TARGET).pdf: *.tex $(TARGET).bbl
	$(LATEX)	$(TARGET)
	$(LATEX)	$(TARGET)

clean:
	$(RM) $(addprefix $(TARGET)., aux bbl blg ent log out pdf maf mtc mtc[0-9]* synctex.gz fdb_latexmk fls)
	rm -rf 'thesis.synctex(busy)'
