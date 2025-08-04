data_path = file.path("D:/temp/FIADB_Direct/Working/")
source(file.path(file.path(data_path,'FIADB_Direct_source_all.R'))) 

# Test FIABD_Direct by querying Delaware 2021 aboveground biomass
DE_test_query <- GB_est(EVAL_GRP = 102021, ATTRIBUTE_NBR = 10)
