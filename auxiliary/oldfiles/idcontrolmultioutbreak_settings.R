############################################################
#This is a file for the multi outbreak id control App
#it contains additional information that helps properly process it
############################################################

appsettings = list()

#ID of app, unique for each app
appsettings$appid = 7

#Title of app, to be displayed on top of analyze tab
appsettings$apptitle = "ID control for multiple outbreaks"

#name of underlying simulation function(s) to be used in the app
#must be provided
appsettings$simfunction = 'simulate_idcontrolmultioutbreak_ode'

#name of underlying mbmodel - if exists
#if it exists, it will be used to build UI input elements
#if not exists, set to NULL
appsettings$mbmodelfile = NULL

#number of plots to produce for output
appsettings$nplots = 1

#specify the type of model that will be run
#if model type is provided as UI input, it should be set to NULL here
#otherwise it needs to be provided
appsettings$modeltype = "_ode_"

#additional input elements for app that are shown on UI
appsettings$otherinputs =   list(
  shiny::selectInput("plotscale", "Log-scale for plot",c("none" = "none", 'x-axis' = "x", 'y-axis' = "y", 'both axes' = "both")),
  shiny::selectInput("plotengine", "plot engine",c("ggplot" = "ggplot", "plotly" = "plotly"))
) #end list
