COPY fs_fiadb.ref_pop_eval_typ_descr         FROM 'C:\Users\pmiles\Documents\Gamma\FIADB_PG_1_8_0_00\BatchScripts\..\CSV_DATA\REF_POP_EVAL_TYP_DESCR.csv'      DELIMITER ',' CSV HEADER;  
COPY fs_fiadb.beginend                       FROM 'C:\Users\pmiles\Documents\Gamma\FIADB_PG_1_8_0_00\BatchScripts\..\CSV_DATA\BEGINEND.csv'                    DELIMITER ',' CSV HEADER; 
COPY fs_fiadb.evalidator_estimate_grp        FROM 'C:\Users\pmiles\Documents\Gamma\FIADB_PG_1_8_0_00\BatchScripts\..\CSV_PERM\EVALIDATOR_ESTIMATE_GRP.csv'     DELIMITER ',' CSV HEADER; 
COPY fs_fiadb.evalidator_pop_est_1_6_1       FROM 'C:\Users\pmiles\Documents\Gamma\FIADB_PG_1_8_0_00\BatchScripts\..\CSV_PERM\EVALIDATOR_POP_EST_1_6_1.csv'    DELIMITER ',' CSV HEADER; 
COPY fs_fiadb.evalidator_variable_library    FROM 'C:\Users\pmiles\Documents\Gamma\FIADB_PG_1_8_0_00\BatchScripts\..\CSV_PERM\EVALIDATOR_VARIABLE_LIBRARY.csv' DELIMITER ',' CSV HEADER; 
COPY fs_fiadb.fia_reporting_tools            FROM 'C:\Users\pmiles\Documents\Gamma\FIADB_PG_1_8_0_00\BatchScripts\..\CSV_PERM\FIA_REPORTING_TOOLS.csv'         DELIMITER ',' CSV HEADER; 
COPY fs_fiadb.datamart_tables                FROM 'C:\Users\pmiles\Documents\Gamma\FIADB_PG_1_8_0_00\BatchScripts\..\CSV_PERM\DATAMART_TABLES.csv'             DELIMITER ',' CSV HEADER; 
COPY fs_fiadb.datamart_most_recent_inv       FROM 'C:\Users\pmiles\Documents\Gamma\FIADB_PG_1_8_0_00\BatchScripts\..\CSV_PERM\DATAMART_MOST_RECENT_INV.csv'    DELIMITER ',' CSV HEADER; 
COPY fs_fiadb.ref_species_group              FROM 'C:\Users\pmiles\Documents\Gamma\FIADB_PG_1_8_0_00\BatchScripts\..\CSV_DATA\REF_SPECIES_GROUP.csv'           DELIMITER ',' CSV HEADER; 
COPY fs_fiadb.ref_species                    FROM 'C:\Users\pmiles\Documents\Gamma\FIADB_PG_1_8_0_00\BatchScripts\..\CSV_DATA\REF_SPECIES.csv'                 DELIMITER ',' CSV HEADER; 
COPY fs_fiadb.ref_pop_attribute              FROM 'C:\Users\pmiles\Documents\Gamma\FIADB_PG_1_8_0_00\BatchScripts\..\CSV_DATA\REF_POP_ATTRIBUTE.csv'           DELIMITER ',' CSV HEADER; 
COPY fs_fiadb.LICHEN_SPECIES_SUMMARY         FROM 'C:\Users\pmiles\Documents\Gamma\FIADB_PG_1_8_0_00\BatchScripts\..\CSV_DATA\LICHEN_SPECIES_SUMMARY.csv'      DELIMITER ',' CSV HEADER; 
COPY fs_fiadb.REF_CITATION                   FROM 'C:\Users\pmiles\Documents\Gamma\FIADB_PG_1_8_0_00\BatchScripts\..\CSV_DATA\REF_CITATION.csv'                DELIMITER ',' CSV HEADER; 
COPY fs_fiadb.REF_FIADB_VERSION              FROM 'C:\Users\pmiles\Documents\Gamma\FIADB_PG_1_8_0_00\BatchScripts\..\CSV_DATA\REF_FIADB_VERSION.csv'           DELIMITER ',' CSV HEADER; 
COPY fs_fiadb.REF_FOREST_TYPE                FROM 'C:\Users\pmiles\Documents\Gamma\FIADB_PG_1_8_0_00\BatchScripts\..\CSV_DATA\REF_FOREST_TYPE.csv'             DELIMITER ',' CSV HEADER; 
COPY fs_fiadb.REF_FOREST_TYPE_GROUP          FROM 'C:\Users\pmiles\Documents\Gamma\FIADB_PG_1_8_0_00\BatchScripts\..\CSV_DATA\REF_FOREST_TYPE_GROUP.csv'       DELIMITER ',' CSV HEADER; 
COPY fs_fiadb.REF_GRM_TYPE                   FROM 'C:\Users\pmiles\Documents\Gamma\FIADB_PG_1_8_0_00\BatchScripts\..\CSV_DATA\REF_GRM_TYPE.csv'                DELIMITER ',' CSV HEADER; 
COPY fs_fiadb.REF_HABTYP_PUBLICATION         FROM 'C:\Users\pmiles\Documents\Gamma\FIADB_PG_1_8_0_00\BatchScripts\..\CSV_DATA\REF_HABTYP_PUBLICATION.csv'      DELIMITER ',' CSV HEADER; 
COPY fs_fiadb.REF_HABTYP_DESCRIPTION         FROM 'C:\Users\pmiles\Documents\Gamma\FIADB_PG_1_8_0_00\BatchScripts\..\CSV_DATA\REF_HABTYP_DESCRIPTION.csv'      DELIMITER ',' CSV HEADER; 
COPY fs_fiadb.REF_INVASIVE_SPECIES           FROM 'C:\Users\pmiles\Documents\Gamma\FIADB_PG_1_8_0_00\BatchScripts\..\CSV_DATA\REF_INVASIVE_SPECIES.csv'        DELIMITER ',' CSV HEADER; 
COPY fs_fiadb.REF_LICHEN_SPECIES             FROM 'C:\Users\pmiles\Documents\Gamma\FIADB_PG_1_8_0_00\BatchScripts\..\CSV_DATA\REF_LICHEN_SPECIES.csv'          DELIMITER ',' CSV HEADER; 
COPY fs_fiadb.REF_LICHEN_SPP_COMMENTS        FROM 'C:\Users\pmiles\Documents\Gamma\FIADB_PG_1_8_0_00\BatchScripts\..\CSV_DATA\REF_LICHEN_SPP_COMMENTS.csv'     DELIMITER ',' CSV HEADER; 
COPY fs_fiadb.REF_PLANT_DICTIONARY           FROM 'C:\Users\pmiles\Documents\Gamma\FIADB_PG_1_8_0_00\BatchScripts\..\CSV_DATA\REF_PLANT_DICTIONARY.csv'        DELIMITER ',' CSV HEADER encoding 'Windows-1252'; 
COPY fs_fiadb.REF_RESEARCH_STATION           FROM 'C:\Users\pmiles\Documents\Gamma\FIADB_PG_1_8_0_00\BatchScripts\..\CSV_DATA\REF_RESEARCH_STATION.csv'        DELIMITER ',' CSV HEADER; 
COPY fs_fiadb.REF_STATE_ELEV                 FROM 'C:\Users\pmiles\Documents\Gamma\FIADB_PG_1_8_0_00\BatchScripts\..\CSV_DATA\REF_STATE_ELEV.csv'              DELIMITER ',' CSV HEADER; 
COPY fs_fiadb.REF_UNIT                       FROM 'C:\Users\pmiles\Documents\Gamma\FIADB_PG_1_8_0_00\BatchScripts\..\CSV_DATA\REF_UNIT.csv'                    DELIMITER ',' CSV HEADER; 
COPY fs_fiadb.REF_NVCS_HIERARCHY_STRCT       FROM 'C:\Users\pmiles\Documents\Gamma\FIADB_PG_1_8_0_00\BatchScripts\..\CSV_DATA\REF_NVCS_HIERARCHY_STRCT.csv'    DELIMITER ',' CSV HEADER; 
COPY fs_fiadb.REF_NVCS_LEVEL_1_CODES         FROM 'C:\Users\pmiles\Documents\Gamma\FIADB_PG_1_8_0_00\BatchScripts\..\CSV_DATA\REF_NVCS_LEVEL_1_CODES.csv'          DELIMITER ',' CSV HEADER; 
COPY fs_fiadb.REF_NVCS_LEVEL_2_CODES         FROM 'C:\Users\pmiles\Documents\Gamma\FIADB_PG_1_8_0_00\BatchScripts\..\CSV_DATA\REF_NVCS_LEVEL_2_CODES.csv'          DELIMITER ',' CSV HEADER; 
COPY fs_fiadb.REF_NVCS_LEVEL_3_CODES         FROM 'C:\Users\pmiles\Documents\Gamma\FIADB_PG_1_8_0_00\BatchScripts\..\CSV_DATA\REF_NVCS_LEVEL_3_CODES.csv'          DELIMITER ',' CSV HEADER; 
COPY fs_fiadb.REF_NVCS_LEVEL_4_CODES         FROM 'C:\Users\pmiles\Documents\Gamma\FIADB_PG_1_8_0_00\BatchScripts\..\CSV_DATA\REF_NVCS_LEVEL_4_CODES.csv'          DELIMITER ',' CSV HEADER; 
COPY fs_fiadb.REF_NVCS_LEVEL_5_CODES         FROM 'C:\Users\pmiles\Documents\Gamma\FIADB_PG_1_8_0_00\BatchScripts\..\CSV_DATA\REF_NVCS_LEVEL_5_CODES.csv'          DELIMITER ',' CSV HEADER; 
COPY fs_fiadb.REF_NVCS_LEVEL_6_CODES         FROM 'C:\Users\pmiles\Documents\Gamma\FIADB_PG_1_8_0_00\BatchScripts\..\CSV_DATA\REF_NVCS_LEVEL_6_CODES.csv'          DELIMITER ',' CSV HEADER; 
COPY fs_fiadb.REF_NVCS_LEVEL_7_CODES         FROM 'C:\Users\pmiles\Documents\Gamma\FIADB_PG_1_8_0_00\BatchScripts\..\CSV_DATA\REF_NVCS_LEVEL_7_CODES.csv'          DELIMITER ',' CSV HEADER; 
COPY fs_fiadb.REF_NVCS_LEVEL_8_CODES         FROM 'C:\Users\pmiles\Documents\Gamma\FIADB_PG_1_8_0_00\BatchScripts\..\CSV_DATA\REF_NVCS_LEVEL_8_CODES.csv'          DELIMITER ',' CSV HEADER; 
COPY fs_fiadb.REF_DIFFERENCE_TEST_PER_ACRE   FROM 'C:\Users\pmiles\Documents\Gamma\FIADB_PG_1_8_0_00\BatchScripts\..\CSV_DATA\REF_DIFFERENCE_TEST_PER_ACRE.csv'    DELIMITER ',' CSV HEADER; 
COPY fs_fiadb.REF_DIFFERENCE_TEST_TOTALS     FROM 'C:\Users\pmiles\Documents\Gamma\FIADB_PG_1_8_0_00\BatchScripts\..\CSV_DATA\REF_DIFFERENCE_TEST_TOTALS.csv'      DELIMITER ',' CSV HEADER; 
COPY fs_fiadb.REF_OWNGRPCD                   FROM 'C:\Users\pmiles\Documents\Gamma\FIADB_PG_1_8_0_00\BatchScripts\..\CSV_DATA\REF_OWNGRPCD.csv'                    DELIMITER ',' CSV HEADER; 
