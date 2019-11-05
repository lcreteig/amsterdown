# N.B. This is for internal use and not distributed with the amsterdown package

available::available("amsterdown") # check whether package names is avaiable, and there's no conflicting interpretations

# initial setup
usethis::create_package("~/amsterdown") # make package skeleton
usethis::use_git() # add version control
usethis::use_github() # add github repository

# add rmarkdown template skeleton
usethis::use_rmarkdown_template(template_name = "UvA thesis",
                       template_dir = "thesis",
                       template_description = "Template for creating a University of Amsterdam PhD thesis using RMarkdown and the bookdown package.")

# add license info
usetthis::use_cc0_license() # public domain, as there's not much code in this package

# add dependency
usethis::use_package("bookdown")

# add README
usethis::use_readme_rmd()

# add continuous integration to:
  # - check package automatically
  # - deploy sample output automatically
usethis::use_travis(ext = "com")

# hide script that deploys from package
usethis::use_build_ignore(c("R/_render.r", "R/_usethis.R"))

# add package-level documentation
usethis::use_package_doc()

# signal development status of package
usethis::use_lifecycle()
usethis::use_lifecycle_badge("experimental")

# setup package documentation as website
usethis::use_pkgdown()
# pkgdown::template_navbar() for adding bookdown output
# pkgdown::build_favicon()
pkgdown::build_site()

