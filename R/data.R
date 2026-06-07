#' Load the Pokémon TCG dataset
#'
#' Reads the parquet file bundled in the package -- no download.
#'
#' @return A tibble containing Pokémon TCG data.
#' @importFrom arrow read_parquet
#' @export
load_data <- function() {
  path <- system.file("extdata", "pokemon_cards.parquet", package = "slowpoke")
  read_parquet(path)
}
