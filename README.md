
<!-- README.md is generated from README.Rmd. Please edit that file -->

# Projet compendium “Modélisation distribution Lièvres”

[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/TCouturier/lievres/master?urlpath=rstudio)

Ce dépôt contient les données issues du Parc National du Mercantour et
le code nécessaire à exécuter les modèles de niche. Il a vocation à être
ré-exécuté à partir de nouvelles données obtenues sur ce territoire ou
sur d’autres espaces protégés. Le détail sur le protocole (contexte,
collecte des données etc.) est disponible à cette adresse : [lien vers
le téléchargement du
rapport](https://mybinder.org/v2/gh/TCouturier/lievres/master?urlpath=rstudio)

Ce projet a été initié le 5 novembre 2020 en projet de groupe lors d’une
formation « Bonnes pratiques pour une recherche reproductible en
écologie numérique » co-organisée par le Cesab de la FRB et le GDR
EcoStat. :point\_right: [Dépôt GitHub de la
formation](https://github.com/FRBCesab/datatoolbox)

### Auteurs

  - **QUEROUE Maud** (Centre d’Ecologie Fonctionnelle et Evolutive)
  - **MOTISI Natacha** (Cirad)
  - **HUGON Florèn** (Laboratoire de Mathématiques et de leurs
    Applications)
  - **COUTURIER Thibaut** (Centre d’Ecologie Fonctionnelle et Evolutive)

### Citation

Citer ce projet comme suit :

> Queroue Maud, Hugon Florèn, Motisi Natacha, Couturier Thibaut, (nov.
> 2020). *Projet compendium : Modélisation des changements de
> distribution hivernale du lièvre variable *Lepus timidus* et du lièvre
> d’Europe *Lepus europaeus* sur leur zone de contact en lien avec le
> changement climatique *.

## Contenu

Ce dossier d’analyses contient :

  - [:file\_folder: data](/analysis/data): Les données obtenues dans le
    Parc national du Mercantour utilisées lors de l’analyse. Les rasters
    obtenus sur l’emprise du Parc sont dans un sous-dossier “rasters”.
  - [:file\_folder: R](/analysis/R): Les fonctions R utilisées lors de
    l’analyse.  
  - [:file\_folder: man](/analysis/man): Les fonctions utilisées
  - [:file\_folder: outpouts](/analysis/outpouts): Les résulats (cartes
    de favorabilité) issues de l’analyse
  - [:file\_folder: docs](/analysis/docs): Documentation additionnelle
    et notamment la dernière version du rapport “protocoles” détaillé.
  - fichier R.make : Le fichier d’exécution des fonctions
  - fichier \_drake.R : les commandes pour exécuter le Drake. Il permet
    notamment de visualiser le plan du projet (dépendances entre les
    objets etc.).
  - fichier \_dev.R : les commandes ayant permis de développer le projet
    (installation des packages etc.)
  - fichier description : Rappelle les fonctions néessaires à l’analyse.
  - fichier RapportLievres.Rmd : Le rapport d’analyses qui contient le
    détail des analyses et les figures produites

## Comment exécuter les analyses depuis votre ordinateur

Ce projet a été développé avec le logiciel R. Pour exécuter ces
analyses, vous aurez besoin d’installer ce logiciel sur votre ordinateur
[R software](https://cloud.r-project.org/) avec l’interface R Studio
[RStudio Desktop](https://rstudio.com/products/rstudio/download/).

Pour exécuter cette analyse, vous pouvez cloner ou télécharger ce dépôt.
Puis exécuter l’ensemble des commandes du fichier \_dev.R. Ensuite créer
le projet sous forme de package (détailler la manip). Enfin, il s’agira
de lancer le make.R qui exécutera le script et les différentes fonctions
associées. Le rapport d’analyses RapportLievres.Rmd peut être ouvert
puis utiliser la fonction “knit” pour générer le fichier au format html
ou pdf ou Word.