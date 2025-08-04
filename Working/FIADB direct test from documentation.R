# Change this path to match the installation of FIADB_Direct on your system
data_path = file.path("D:/temp/FIADB_Direct/Working/")
source(file.path(file.path(data_path,'FIADB_Direct_source_all.R'))) 


##these are all the examples from FIADB documentation

#Delaware(Statecd = 10)
# Maine (Statecd = 23)
# Minnesota (Statecd = 27)
# Virginia (Statecd = 51) 
# Attribute 3   - Area of timberland, in acres
# Attribute 10  - Aboveground biomass of live trees (at least 1 inch d.b.h./d.r.c.), in dry short tons, on forest land (EXPVOL)
# Attribute 208 - Average annual net growth of merchantable bole wood volume of growing-stock trees (at least 5 inches d.b.h.), in cubic feet, on timberland (EXPGROW)
# Attribute 127 - Area change - area forest land both measurements from remeasured plots (EXPCHNG)
# Attribute 311 - Average annual net growth of aboveground biomass of trees (at least 1 inch d.b.h./d.r.c.), in dry short tons, on forest land
# Attribute 16  - Net sawlog wood volume of sawtimber trees, in cubic feet, on forest land (EXPVOL)


#Getting records for plot identifier ‘168258988020004’
GET_record('tree','plt_cn',168258988020004)
#Getting tree record aboveground biomass for Delaware in 2021
AboveG_biomass_DE_TREE_obs <- TREE_obs(EVAL_GRP = 102021, ATTRIBUTE_NBR = 10)
#Getting tree records for  aboveground biomass for Delaware in 2021 and grouping by county and diameter
AboveG_biomass_DE_TREE_obs <- TREE_obs(EVAL_GRP = 102021, ATTRIBUTE_NBR = 10, GRP_BY_ATTRIB =  c('countycd','dia'))
#Getting tree records for aboveground biomass for Delaware in 2021 and filtering ownergroup = 20
AboveG_biomass_DE_TREE_obs <- TREE_obs(EVAL_GRP = 102021, ATTRIBUTE_NBR = 10, FILTER = 'and cond.owngrpcd = 20')
#Getting tree records for  aboveground biomass for Delaware in 2021, grouping by county and filtering having diameter greater than 10 or less than 20
AboveG_biomass_DE_TREE_obs_w_filter <-TREE_obs_w_filter(EVAL_GRP = 102021, ATTRIBUTE_NBR = 10, GRP_BY_ATTRIB = "countycd", VAR_NAMES = 'DIA', VAR_VALUES = c(10,20), VAR_CONDS = c('>=', '<'), VAR_BOOLS =  'AND')
#Getting plot record aboveground biomass for Delaware in 2021
AboveG_biomass_DE_PLOT_obs <- PLOT_obs(EVAL_GRP = 102021, ATTRIBUTE_NBR = 10)
#Getting plot records for aboveground biomass for Delaware in 2021 and grouping by county
AboveG_biomass_DE_PLOT_obs <- PLOT_obs(EVAL_GRP = 192019, ATTRIBUTE_NBR = 10, GRP_BY_ATTRIB = "countycd")
#Getting plot records for aboveground biomass for Delaware in 2021 and filtering ownergroup = 20
AboveG_biomass_DE_PLOT_obs <- PLOT_obs(EVAL_GRP = 102021, ATTRIBUTE_NBR = 10, FILTER = 'and cond.owngrpcd = 20')
#Getting plot records for aboveground biomass for Delaware in 2021, grouping by county and filtering having diameter greater than or equal to 10 or less than 20 inches
AboveG_biomass_DE_PLOT_obs_w_filter <- PLOT_obs_w_filter(EVAL_GRP = 102021, ATTRIBUTE_NBR = 10, GRP_BY_ATTRIB = "countycd", VAR_NAMES = 'DIA', VAR_VALUES = c(10,20), VAR_CONDS = c('>=', '<'), VAR_BOOLS = 'AND')
#Estimating aboveground biomass for Delaware in 2021
AboveG_biomass_DE_GB_est <- GB_est(EVAL_GRP = 102021, ATTRIBUTE_NBR = 10)

#Estimating aboveground biomass for Delaware in 2021 and grouping by county
AboveG_biomass_DE_GB_est <- GB_est(EVAL_GRP = 102021, ATTRIBUTE_NBR = 10, 
                                   GRP_BY_ATTRIB = 'countycd')

Area_VA_GB <- GB_est(EVAL_GRP = 512021, ATTRIBUTE_NBR = 3, GRP_BY_ATTRIB=c("FORTYPCD","countycd","stdage"),)

temp <- Area_VA_GB %>% dplyr::filter(TYPGRPCD %in% c(140,160) & COUNTYCD %in% c(25,111,117))
table(temp$STDAGE)

# VAR_NAMES = 'DIA', VAR_VALUES = c(10,20), VAR_CONDS = c('>=', '<'), VAR_BOOLS = 'AND'

Area_VA_GB_4_7 <- GB_est_w_filter(EVAL_GRP = 512021, 
                                  ATTRIBUTE_NBR = 3, 
                                  GRP_BY_ATTRIB=c("FORTYPCD","countycd","stdage"),
                                  VAR_NAMES = c('STDAGE','COUNTYCD'),
                                  VAR_VALUES = c(4,7), VAR_CONDS = c('>=', '<='), VAR_BOOLS = 'AND')
V_N = c('STDAGE','COUNTYCD')
V_V = list(stdage=c(0,3),countycd=c(25,111,117))
V_C = list(stdage=c('>=', '<='),countycd=c('=','=','='))
V_B = list(stdage='and',countycd=c('or','or'))
Area_VA_GB_0_3 <- GB_est_w_filter(EVAL_GRP = 512021, 
                                  ATTRIBUTE_NBR = 3, 
                                  GRP_BY_ATTRIB=c("FORTYPCD"),
                                  VAR_NAMES = V_N,
                                  VAR_VALUES = V_V, 
                                  VAR_CONDS = V_C, 
                                  VAR_BOOLS = V_B)

Area_VA_GB_0_3 <- Area_VA_GB_0_3 %>% dplyr::filter(TYPGRPCD %in% c(140,160) & COUNTYCD %in% c(25,111,117))
fwrite(Area_VA_GB_0_3,"/home/pradtke/Rscripts/temp/Area_VA_GB_0_3.csv")

V_N = c('STDAGE','COUNTYCD')
V_V = list(stdage=c(4,7),countycd=c(25,111,117))
V_C = list(stdage=c('>=', '<='),countycd=c('=','=','='))
V_B = list(stdage='and',countycd=c('or','or'))
Area_VA_GB_4_7 <- GB_est_w_filter(EVAL_GRP = 512021, 
                                  ATTRIBUTE_NBR = 3, 
                                  GRP_BY_ATTRIB=c("FORTYPCD"),
                                  VAR_NAMES = V_N,
                                  VAR_VALUES = V_V, 
                                  VAR_CONDS = V_C, 
                                  VAR_BOOLS = V_B)

Area_VA_GB_4_7 <- Area_VA_GB_4_7 %>% dplyr::filter(TYPGRPCD %in% c(140,160) & COUNTYCD %in% c(25,111,117))
fwrite(Area_VA_GB_4_7,"/home/pradtke/Rscripts/temp/Area_VA_GB_4_7.csv")

V_N = c('STDAGE','COUNTYCD')
V_V = list(stdage=c(8,11),countycd=c(25,111,117))
V_C = list(stdage=c('>=', '<='),countycd=c('=','=','='))
V_B = list(stdage='and',countycd=c('or','or'))
Area_VA_GB_8_11 <- GB_est_w_filter(EVAL_GRP = 512021, 
                                  ATTRIBUTE_NBR = 3, 
                                  GRP_BY_ATTRIB=c("FORTYPCD"),
                                  VAR_NAMES = V_N,
                                  VAR_VALUES = V_V, 
                                  VAR_CONDS = V_C, 
                                  VAR_BOOLS = V_B)

Area_VA_GB_8_11 <- Area_VA_GB_8_11 %>% dplyr::filter(TYPGRPCD %in% c(140,160) & COUNTYCD %in% c(25,111,117))
fwrite(Area_VA_GB_8_11,"/home/pradtke/Rscripts/temp/Area_VA_GB_8_11.csv")


V_N = c('STDAGE','COUNTYCD')
V_V = list(stdage=c(12,15),countycd=c(25,111,117))
V_C = list(stdage=c('>=', '<='),countycd=c('=','=','='))
V_B = list(stdage='and',countycd=c('or','or'))
Area_VA_GB_12_15 <- GB_est_w_filter(EVAL_GRP = 512021, 
                                   ATTRIBUTE_NBR = 3, 
                                   GRP_BY_ATTRIB=c("FORTYPCD"),
                                   VAR_NAMES = V_N,
                                   VAR_VALUES = V_V, 
                                   VAR_CONDS = V_C, 
                                   VAR_BOOLS = V_B)

Area_VA_GB_12_15 <- Area_VA_GB_12_15 %>% dplyr::filter(TYPGRPCD %in% c(140,160) & COUNTYCD %in% c(25,111,117))
fwrite(Area_VA_GB_12_15,"/home/pradtke/Rscripts/temp/Area_VA_GB_12_15.csv")


V_N = c('STDAGE','COUNTYCD')
V_V = list(stdage=c(16,19),countycd=c(25,111,117))
V_C = list(stdage=c('>=', '<='),countycd=c('=','=','='))
V_B = list(stdage='and',countycd=c('or','or'))
Area_VA_GB_16_19 <- GB_est_w_filter(EVAL_GRP = 512021, 
                                    ATTRIBUTE_NBR = 3, 
                                    GRP_BY_ATTRIB=c("FORTYPCD"),
                                    VAR_NAMES = V_N,
                                    VAR_VALUES = V_V, 
                                    VAR_CONDS = V_C, 
                                    VAR_BOOLS = V_B)

Area_VA_GB_16_19 <- Area_VA_GB_16_19 %>% dplyr::filter(TYPGRPCD %in% c(140,160) & COUNTYCD %in% c(25,111,117))
fwrite(Area_VA_GB_16_19,"/home/pradtke/Rscripts/temp/Area_VA_GB_16_19.csv")

V_N = c('STDAGE','COUNTYCD')
V_V = list(stdage=c(20,50),countycd=c(25,111,117))
V_C = list(stdage=c('>=', '<='),countycd=c('=','=','='))
V_B = list(stdage='and',countycd=c('or','or'))
Area_VA_GB_20_50 <- GB_est_w_filter(EVAL_GRP = 512021, 
                                    ATTRIBUTE_NBR = 3, 
                                    GRP_BY_ATTRIB=c("FORTYPCD"),
                                    VAR_NAMES = V_N,
                                    VAR_VALUES = V_V, 
                                    VAR_CONDS = V_C, 
                                    VAR_BOOLS = V_B)

Area_VA_GB_20_50 <- Area_VA_GB_20_50 %>% dplyr::filter(TYPGRPCD %in% c(140,160) & COUNTYCD %in% c(25,111,117))
fwrite(Area_VA_GB_20_50,"/home/pradtke/Rscripts/temp/Area_VA_GB_20_50.csv")



summary(Area_VA_GB)


#Estimating aboveground biomass for Delaware in 2021 and filtering ownergroup = 20
AboveG_biomass_DE_GB_est <- GB_est(EVAL_GRP = 102021, ATTRIBUTE_NBR = 10, 
                                   FILTER = 'and cond.owngrpcd = 20')

#Estimating aboveground biomass for Delaware in 2021, grouping by county and filtering having diameter greater than 10 or less than 20
AboveG_biomass_DE_GB_est_w_filter <- GB_est_w_filter(EVAL_GRP = 102021, ATTRIBUTE_NBR = 10, GRP_BY_ATTRIB = "countycd", VAR_NAMES = 'DIA', VAR_VALUES = c(10,20), VAR_CONDS = c('>=', '<'), VAR_BOOLS = 'AND')

#When there is only one VAR_NAMES AND VAR_VALUES
create_filter( VAR_NAMES = 'DIA', VAR_VALUES = 10, VAR_CONDS = '>')
#When there is only one VAR_NAMES and more than one VAR_VALUES
create_filter(VAR_NAMES = 'DIA', VAR_VALUES = c(10,30), VAR_CONDS = c('>', '<'), VAR_BOOLS = 'AND')
#When there is more than one VAR_NAMES and only one VAR_VALUES for each VAR_NAMES
create_filter(VAR_NAMES = c('DIA', 'OWNGRPCD'), VAR_VALUES = list(DIA = 10, OWNGRPCD = 20), VAR_CONDS = list(DIA = '>',OWNGRPCD = '='), VAR_BOOLS = list(DIA = NA, OWNGRPCD = NA))
#When there is more than one VAR_NAMES and only one VAR_VALUES for one VAR_NAME and more than one VAR_VALUES for the other one
create_filter(VAR_NAMES = c('DIA', 'OWNGRPCD'), VAR_VALUES = list(DIA = 10, OWNGRPCD = c(10,20)), VAR_CONDS = list(DIA = '>',OWNGRPCD = '='), VAR_BOOLS = list(DIA = NA, OWNGRPCD = 'OR'))
#When there is more than one VAR_NAMES and more than one VAR_VALUES for each VAR_NAMES
create_filter(VAR_NAMES = c('DIA', 'OWNGRPCD'),
              VAR_VALUES = list(DIA = c(5,12), OWNGRPCD = c(10,20,30)),
              VAR_CONDS = list(DIA = c('>=','<'), OWNGRPCD = '='),
              VAR_BOOLS = list(DIA = 'AND', OWNGRPCD = 'OR'))




