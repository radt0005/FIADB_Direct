if(!exists('data_path')){
  stop(paste0('Variable "data_path" must be set. Example code follows: 
              \ndata_path = file.path("/media/rstudio/data/Rscripts/Working/")'))
}
source(file.path(data_path,"GB_est.R"))
source(file.path(data_path,"PLOT_obs.R"))
source(file.path(data_path,"TREE_obs.R"))
source(file.path(data_path,"GB_est_w_filter.R"))
source(file.path(data_path,"PLOT_obs_w_filter.R"))
source(file.path(data_path,"TREE_obs_w_filter.R"))
source(file.path(data_path,"GET_record.R"))


# source("/home/rstudio/data/Rscripts/Working/GB_est.R")
# source("/home/rstudio/data/Rscripts/Working/PLOT_obs.R")
# source("/home/rstudio/data/Rscripts/Working/TREE_obs.R")
# source("/home/rstudio/data/Rscripts/Working/GB_est_w_filter.R")
# source("/home/rstudio/data/Rscripts/Working/PLOT_obs_w_filter.R")
# source("/home/rstudio/data/Rscripts/Working/TREE_obs_w_filter.R")
# source("/home/rstudio/data/Rscripts/Working/GET_record.R")
