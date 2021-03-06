Library <- function(Packages) {
  InstallAndLoad <- function(Package) {
    if (!Package %in% installed.packages()[, 1]) {install.packages(Package, repos="https://cran.rstudio.com/")}
    require(Package, character.only = TRUE)
  }
  invisible(sapply(Packages, InstallAndLoad))
}
# Ajouter les packages n�cessaires ici
Library(c("rmarkdown", "bookdown","knitr"))

# t�l�charger et installer MikTex selon votre susyt�me d'exploitation
# https://miktex.org/download


# t�l�charger et installer Rtools depuis le  site
#https://cran.r-project.org/bin/windows/Rtools/
  
  
writeLines('PATH="${RTOOLS40_HOME}\\usr\\bin;${PATH}"', con = "~/.Renviron")
# quitter et red�marrer Rstudio

Sys.which("make") ## si cette commande doit ceci "C:\\rtools40\\usr\\bin\\make.exe"


install.packages("devtools")
library("devtools")
install_github("EcoFoG/EcoFoG")


install.packages('tinytex') # tinytex permet une mise � jour de latex avant chaque tricotages
tinytex::install_tinytex()  # install TinyTeX

library(rmarkdown)
library(bookdown)


library("EcoFoG")
