### Novembre 2020
### Creation research compendium

#installation de rrtools pour ameliorer l'elaboration de Research Compendium
#chercher rrtools sur GitHub
install.packages("devtools")
devtools::install_github("benmarwick/rrtools")

#creation du RC.
rrtools::use_compendium("../Lievres/", open = FALSE)

#modif fichier Description
usethis::use_r(name="loadData.R") #cree dossier R avec le fichier fonction R
#creation fonction output
usethis::use_r(name="fctOutput.R")

#creer le dossier data
dir.create("data")

#ajoute les packages au fichier DESCRIPTION
usethis::use_package("sf")
usethis::use_package("devtools")
usethis::use_package("ggplot2")
usethis::use_package("here")
usethis::use_package("readr")
usethis::use_pipe()
usethis::use_package("sp")
usethis::use_package("raster")

devtools::document()

#creer readme
rrtools::use_readme_rmd() #efface conduct and contributing (pas besoin ici)

#creer le fichier makeR
file.create("make.R")

#verifier notre package
devtools::check()


# Drake
usethis::use_package("drake")
usethis::use_r(name = "plan.R")
file.create("_drake.R")
devtools::document()
