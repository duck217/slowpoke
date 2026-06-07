library(readr)
library(dplyr)
library(arrow)

url <- "https://www.dropbox.com/scl/fi/tnl4wcmgduu3bnmmllz2u/pokemon_cards.csv?rlkey=h7evg3hr4ckzqrxrzoy458ojs&st=uzrlktbc&dl=1"

pokemon_cards <- read_csv(url, show_col_types = FALSE) |>
  select(name, flavorText, rarity, series, artist)

dir.create("inst/extdata", recursive = TRUE, showWarnings = FALSE)
write_parquet(pokemon_cards, "inst/extdata/pokemon_cards.parquet")
