base = $(shell basename $$PWD)
target = $(base).pdf
sources = *.tex
compile = lualatex -jobname=$(base) -output-directory='out' -halt-on-error -pdf

rsyncopts = -r --include="*/" --include "*.png" --include="*.pdf" --exclude="*"
results = $$HOME/Downloads/slac_local
result_subfolders = acorn_framework/plots/figures\
	acorn_framework/plots/performance\
	acorn_framework/plots/figures\
	uproot_analysis/jet_counts

$(target): $(sources)
	$(compile) main.tex 

$(result_subfolders):
	rsync $(rsyncopts) $(results)/$@ ./images/remote

sync: $(result_subfolders)
	git add images/remote

desync:
	rm -r images/remote

hard_desync:
	git rm -rf images/remote

clean:
	rm out/$(base)* &> /dev/null
