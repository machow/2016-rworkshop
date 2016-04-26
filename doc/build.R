library(rmarkdown)
if (!interactive()){
  args <- commandArgs(trailing=TRUE)
  all_rmd <- grep("[0-9]+.*/.*\\.Rmd", dir(recursive=TRUE), value=TRUE)
  if (identical(args, 'all')) to_knit <- all_rmd
  if (length(args)) to_knit <- args
  else cat(all_rmd) & quit()
}

print(to_knit)
lapply(to_knit, rmarkdown::render)
