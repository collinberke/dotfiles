# R session configuration file
if (interactive()) {
  suppressMessages(require(colorout)) # neovim R console colors
  suppressMessages(require(devtools)) # R development tools
  suppressMessages(require(usethis))  # Project management tools
}

## general settings
options(
   usethis.description = list(        # R package DESCRIPTION file info
      `Authors@R` = 'person("Collin",
                            "Berke", 
                            email = "collin.berke@gmail.com",
                            role = c("aut", "cre"))',
      License = "MIT + file LICENSE",
      Version = "0.0.0.9000"
   )
)

## neovim
colorout::setOutputColors(
   normal = 252,
   negnum = 146,
   zero = 187,
   number = 110,
   date = 61,
   string = 209,
   const = 75,
   warn = c(236, 179),
   error = c(236, 198),
   zero.limit = 0.1,
   verbose = FALSE) # neovim R console color codes

## shiny
options(shiny.port = 5242) # Render shiny apps to following port
