base = $(shell basename $$PWD)
target = $(base).pdf
sources = *.tex
compile = lualatex -jobname=$(base) -output-directory='out' -halt-on-error -pdf

rsyncopts = -r --include="*/" --include "*.png" --include="*.pdf" --exclude="*"
results = $$HOME/Downloads/slac_local
result_subfolders = ''

$(target): $(sources) out
	$(compile) main.tex 

out:
	mkdir out

$(result_subfolders):
	rsync $(rsyncopts) $(results)/$@ ./images/remote

sync: $(result_subfolders)
	git add images/remote

desync:
	rm -r images/remote

hard_desync:
	git rm -rf images/remote

clean:
	rm out/* &> /dev/null
