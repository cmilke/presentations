base = $(shell basename $$PWD)
target = $(base).pdf
source = *.tex
compile = latexmk -jobname=$(base) -output-directory='out' -halt-on-error -pdf

$(target): $(source) 
	$(compile) main.tex

clean:
	rm out/$(base)* &> /dev/null

spotless: clean
	rmdir out
