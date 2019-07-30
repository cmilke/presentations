base = $(shell basename $$PWD)
target = $(base).pdf
source = *.tex
compile = latexmk -jobname=$(base) -output-directory='out' -halt-on-error -pdf

rsyncopts = -r --include="*/" --include="*.pdf" --exclude="*"
analysis = $$HOME/Downloads/maneframe_local/analysis
studies = btag_c10_score_comparison ipxd_performance track_aux_study track_study

$(target): $(source) 
	$(compile) main.tex

$(studies):
	rsync $(rsyncopts) $(analysis)/$@ ./images	

sync: $(studies)

desync:
	@cd images && rm -r $(studies) 2> /dev/null || true

clean:
	rm out/$(base)* &> /dev/null

spotless: clean desync
	rmdir out
