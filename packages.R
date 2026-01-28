paste(
  sort(
    c(tools::package_dependencies(packages = "ggplot2", recursive = TRUE)$ggplot2, "ggplot2",
      tools::package_dependencies(packages = "dplyr",recursive = TRUE)$dplyr, "dplyr")
    ),
  collapse = " ")
