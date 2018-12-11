flextable2word <- function(flextab){
  require(tidyverse)
  require(flextable)
  ft <- autofit(theme_zebra(flextab))
  tmp <- tempfile(fileext = ".docx")
  officer::read_docx() %>%
    body_add_flextable(ft) %>%
    print(target = tmp)
  browseURL(tmp)
}
