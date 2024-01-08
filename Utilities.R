#| echo: false
#| results: hide
#| warning: false
knitr::opts_chunk$set(
  echo = T,
  fig.width = 12,
  fig.height = 12,
  fig.align = 'center'
)

lib_list <- list(
  "tidyverse",
  "readr",
  "fpp3",
  "ggthemes",
  "patchwork",
  "quantreg",
  "broom",
  "fitdistrplus",
  "EnvStats"
)

lapply(
  lib_list,
  require,
  quietly = TRUE, 
  warn.conflicts = FALSE, 
  character.only = TRUE
)

theme_set(
  theme_tufte(
    base_size = 20,
    base_family = "Atkinson Hyperlegible"
  )
)

theme_update(
  legend.position = "top"
)

custom_color = scale_color_brewer(
  type = 'div',
  palette = 'Dark2'
)
custom_fill <- scale_color_brewer(
  type = 'div',
  direction = -1,
  palette = 'Pastel1',
  aesthetics = 'fill'
)

tau_sel <- c(
  .1,
  .25,
  .5,
  .75,
  .9
)

pathmaker <- function(filename, data_path = NULL) {
  if (
    !is.null(
      data_path
    )
  ) {
    
    file_path <- paste0(
      data_path,
      filename
    )
    return(
      file_path
    )
  } else {
    print("You need to specify the path for your data!")
  }
}