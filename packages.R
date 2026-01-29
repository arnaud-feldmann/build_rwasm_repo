package_and_dependencies <-
  function(package) {
    c(tools::package_dependencies(packages = "ggplot2", recursive = TRUE)$ggplot2, "ggplot2")
  }

packages_and_dependencies <-
  function(...) {
    list(...) |>
      lapply(package_and_dependencies) |>
      do.call(c, args=_) |>
      sort() |>
      paste(collapse = " ")
  }

packages_and_dependencies("ggplot2", "dplyr", "arrow")