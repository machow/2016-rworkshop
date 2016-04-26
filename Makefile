ALL_RMD  = $(shell Rscript --vanilla doc/build.R)
ALL_HTML = $(ALL_RMD:%.Rmd=%.html)

all: 
	Rscript doc/build.R "all"

update_html: $(ALL_HTML)

%.html: %.Rmd
	Rscript doc/build.R "$^"

# Doc publishing ---------------

publish: 
	mkdocs gh-deploy -c
