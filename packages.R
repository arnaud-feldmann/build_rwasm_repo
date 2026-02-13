package_and_dependencies <-
  function(package) {
    c(tools::package_dependencies(packages = package, recursive = TRUE)[[package]], package)
  }

packages_and_dependencies <-
  function(...) {
    list(...) |>
      lapply(package_and_dependencies) |>
      do.call(c, args=_) |>
      unique() |>
      sort() |>
      paste(collapse = " ")
  }

packages_and_dependencies("tidyverse", "nycflights13")

