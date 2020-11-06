# load all functions and packages of the research compendium
devtools::load_all()

# Configure drake plan before execution
# drake_config collects and sanitizes all the parameters and settings
config <- drake::drake_config(
  plan = write_plan(),
  envir = getNamespace("Lievres"))
