# Install packages
if (!requireNamespace("remotes")) install.packages("remotes")
if (!requireNamespace("usethis")) install.packages("usethis")
if (!requireNamespace("rstudioapi")) install.packages("rstudioapi")
if (!requireNamespace("blogdown")) remotes::install_github("rstudio/blogdown")

# Create the skeleton
usethis::create_project(".")
blogdown::new_site(theme = "wowchemy/starter-academic")
blogdown::serve_site()

# Add version control
usethis::use_git()
usethis::use_github()

# Configure .Rprofile
blogdown::config_Rprofile() 
# options(
#     # to automatically serve the site on RStudio startup, set this option to TRUE
#     blogdown.serve_site.startup = FALSE,
#     # to disable knitting Rmd files on save, set this option to FALSE
#     blogdown.knit.on_save = FALSE,
#     # build .Rmd to .html (via Pandoc); to build to Markdown, set this option to 'markdown'
#     blogdown.author = "Marco Chiapello",
#     blogdown.ext = ".Rmarkdown",
#     blogdown.subdir = "post",
#     blogdown.method = "markdown"
# )

# Sculpt the site
rstudioapi::navigateToFile("config/_default/params.yaml")
