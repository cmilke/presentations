base = smu_atlas_190501
target = $(base).pdf
source = *.tex
compile = latexmk -halt-on-error -pdf

target: $(source) 
	$(compile) $(base).tex

clean:
	rm *aux *fdb_latexmk *fls *log *nav *out *pdf *snm *toc
