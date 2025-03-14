COPY fs_fiadb.survey                  FROM 'C:\Users\pmiles\Documents\Gamma\FIADB_PG_1_8_0_00\BatchScripts\..\CSV_DATA\de_SURVEY.csv'                  DELIMITER ',' CSV HEADER;
COPY fs_fiadb.county                  FROM 'C:\Users\pmiles\Documents\Gamma\FIADB_PG_1_8_0_00\BatchScripts\..\CSV_DATA\de_COUNTY.csv'                  DELIMITER ',' CSV HEADER;
COPY fs_fiadb.plot                    FROM 'C:\Users\pmiles\Documents\Gamma\FIADB_PG_1_8_0_00\BatchScripts\..\CSV_DATA\de_PLOT.csv'                    DELIMITER ',' CSV HEADER;
COPY fs_fiadb.pop_eval_grp            FROM 'C:\Users\pmiles\Documents\Gamma\FIADB_PG_1_8_0_00\BatchScripts\..\CSV_DATA\de_POP_EVAL_GRP.csv'            DELIMITER ',' CSV HEADER;
COPY fs_fiadb.pop_eval                FROM 'C:\Users\pmiles\Documents\Gamma\FIADB_PG_1_8_0_00\BatchScripts\..\CSV_DATA\de_POP_EVAL.csv'                DELIMITER ',' CSV HEADER;
COPY fs_fiadb.pop_eval_typ            FROM 'C:\Users\pmiles\Documents\Gamma\FIADB_PG_1_8_0_00\BatchScripts\..\CSV_DATA\de_POP_EVAL_TYP.csv'            DELIMITER ',' CSV HEADER;
COPY fs_fiadb.pop_estn_unit           FROM 'C:\Users\pmiles\Documents\Gamma\FIADB_PG_1_8_0_00\BatchScripts\..\CSV_DATA\de_POP_ESTN_UNIT.csv'           DELIMITER ',' CSV HEADER;
COPY fs_fiadb.pop_stratum             FROM 'C:\Users\pmiles\Documents\Gamma\FIADB_PG_1_8_0_00\BatchScripts\..\CSV_DATA\de_POP_STRATUM.csv'             DELIMITER ',' CSV HEADER;
COPY fs_fiadb.pop_plot_stratum_assgn  FROM 'C:\Users\pmiles\Documents\Gamma\FIADB_PG_1_8_0_00\BatchScripts\..\CSV_DATA\de_POP_PLOT_STRATUM_ASSGN.csv'  DELIMITER ',' CSV HEADER;
COPY fs_fiadb.plotgeom                FROM 'C:\Users\pmiles\Documents\Gamma\FIADB_PG_1_8_0_00\BatchScripts\..\CSV_DATA\de_PLOTGEOM.csv'                DELIMITER ',' CSV HEADER;
COPY fs_fiadb.cond                    FROM 'C:\Users\pmiles\Documents\Gamma\FIADB_PG_1_8_0_00\BatchScripts\..\CSV_DATA\de_COND.csv'                    DELIMITER ',' CSV HEADER;
COPY fs_fiadb.tree                    FROM 'C:\Users\pmiles\Documents\Gamma\FIADB_PG_1_8_0_00\BatchScripts\..\CSV_DATA\de_TREE.csv'                    DELIMITER ',' CSV HEADER;
COPY fs_fiadb.seedling                FROM 'C:\Users\pmiles\Documents\Gamma\FIADB_PG_1_8_0_00\BatchScripts\..\CSV_DATA\de_SEEDLING.csv'                DELIMITER ',' CSV HEADER;
COPY fs_fiadb.tree_regional_biomass   FROM 'C:\Users\pmiles\Documents\Gamma\FIADB_PG_1_8_0_00\BatchScripts\..\CSV_DATA\de_TREE_REGIONAL_BIOMASS.csv'   DELIMITER ',' CSV HEADER;
COPY fs_fiadb.tree_grm_estn           FROM 'C:\Users\pmiles\Documents\Gamma\FIADB_PG_1_8_0_00\BatchScripts\..\CSV_DATA\de_TREE_GRM_ESTN.csv'           DELIMITER ',' CSV HEADER;
COPY fs_fiadb.tree_grm_component      FROM 'C:\Users\pmiles\Documents\Gamma\FIADB_PG_1_8_0_00\BatchScripts\..\CSV_DATA\de_TREE_GRM_COMPONENT.csv'      DELIMITER ',' CSV HEADER;
COPY fs_fiadb.pop_eval_attribute      FROM 'C:\Users\pmiles\Documents\Gamma\FIADB_PG_1_8_0_00\BatchScripts\..\CSV_DATA\de_POP_EVAL_ATTRIBUTE.csv'      DELIMITER ',' CSV HEADER;
COPY fs_fiadb.cond_dwm_calc           FROM 'C:\Users\pmiles\Documents\Gamma\FIADB_PG_1_8_0_00\BatchScripts\..\CSV_DATA\de_COND_DWM_CALC.csv'           DELIMITER ',' CSV HEADER;
COPY fs_fiadb.subp_cond_chng_mtrx     FROM 'C:\Users\pmiles\Documents\Gamma\FIADB_PG_1_8_0_00\BatchScripts\..\CSV_DATA\de_SUBP_COND_CHNG_MTRX.csv'     DELIMITER ',' CSV HEADER;
COPY fs_fiadb.BOUNDARY                FROM 'C:\Users\pmiles\Documents\Gamma\FIADB_PG_1_8_0_00\BatchScripts\..\CSV_DATA\de_BOUNDARY.csv'                DELIMITER ',' CSV HEADER;
COPY fs_fiadb.DWM_COARSE_WOODY_DEBRIS FROM 'C:\Users\pmiles\Documents\Gamma\FIADB_PG_1_8_0_00\BatchScripts\..\CSV_DATA\de_DWM_COARSE_WOODY_DEBRIS.csv' DELIMITER ',' CSV HEADER;
COPY fs_fiadb.DWM_DUFF_LITTER_FUEL    FROM 'C:\Users\pmiles\Documents\Gamma\FIADB_PG_1_8_0_00\BatchScripts\..\CSV_DATA\de_DWM_DUFF_LITTER_FUEL.csv'    DELIMITER ',' CSV HEADER;
COPY fs_fiadb.DWM_FINE_WOODY_DEBRIS   FROM 'C:\Users\pmiles\Documents\Gamma\FIADB_PG_1_8_0_00\BatchScripts\..\CSV_DATA\de_DWM_FINE_WOODY_DEBRIS.csv'   DELIMITER ',' CSV HEADER;
COPY fs_fiadb.DWM_MICROPLOT_FUEL      FROM 'C:\Users\pmiles\Documents\Gamma\FIADB_PG_1_8_0_00\BatchScripts\..\CSV_DATA\de_DWM_MICROPLOT_FUEL.csv'      DELIMITER ',' CSV HEADER;
COPY fs_fiadb.DWM_RESIDUAL_PILE       FROM 'C:\Users\pmiles\Documents\Gamma\FIADB_PG_1_8_0_00\BatchScripts\..\CSV_DATA\de_DWM_RESIDUAL_PILE.csv'       DELIMITER ',' CSV HEADER;
COPY fs_fiadb.DWM_TRANSECT_SEGMENT    FROM 'C:\Users\pmiles\Documents\Gamma\FIADB_PG_1_8_0_00\BatchScripts\..\CSV_DATA\de_DWM_TRANSECT_SEGMENT.csv'    DELIMITER ',' CSV HEADER;
COPY fs_fiadb.DWM_VISIT               FROM 'C:\Users\pmiles\Documents\Gamma\FIADB_PG_1_8_0_00\BatchScripts\..\CSV_DATA\de_DWM_VISIT.csv'               DELIMITER ',' CSV HEADER;
COPY fs_fiadb.INVASIVE_SUBPLOT_SPP    FROM 'C:\Users\pmiles\Documents\Gamma\FIADB_PG_1_8_0_00\BatchScripts\..\CSV_DATA\de_INVASIVE_SUBPLOT_SPP.csv'    DELIMITER ',' CSV HEADER;
COPY fs_fiadb.LICHEN_LAB              FROM 'C:\Users\pmiles\Documents\Gamma\FIADB_PG_1_8_0_00\BatchScripts\..\CSV_DATA\de_LICHEN_LAB.csv'              DELIMITER ',' CSV HEADER;
COPY fs_fiadb.LICHEN_PLOT_SUMMARY     FROM 'C:\Users\pmiles\Documents\Gamma\FIADB_PG_1_8_0_00\BatchScripts\..\CSV_DATA\de_LICHEN_PLOT_SUMMARY.csv'     DELIMITER ',' CSV HEADER;
COPY fs_fiadb.LICHEN_VISIT            FROM 'C:\Users\pmiles\Documents\Gamma\FIADB_PG_1_8_0_00\BatchScripts\..\CSV_DATA\de_LICHEN_VISIT.csv'            DELIMITER ',' CSV HEADER;
COPY fs_fiadb.OZONE_BIOSITE_SUMMARY   FROM 'C:\Users\pmiles\Documents\Gamma\FIADB_PG_1_8_0_00\BatchScripts\..\CSV_DATA\de_OZONE_BIOSITE_SUMMARY.csv'   DELIMITER ',' CSV HEADER;
COPY fs_fiadb.OZONE_PLOT              FROM 'C:\Users\pmiles\Documents\Gamma\FIADB_PG_1_8_0_00\BatchScripts\..\CSV_DATA\de_OZONE_PLOT.csv'              DELIMITER ',' CSV HEADER;
COPY fs_fiadb.OZONE_PLOT_SUMMARY      FROM 'C:\Users\pmiles\Documents\Gamma\FIADB_PG_1_8_0_00\BatchScripts\..\CSV_DATA\de_OZONE_PLOT_SUMMARY.csv'      DELIMITER ',' CSV HEADER;
COPY fs_fiadb.OZONE_SPECIES_SUMMARY   FROM 'C:\Users\pmiles\Documents\Gamma\FIADB_PG_1_8_0_00\BatchScripts\..\CSV_DATA\de_OZONE_SPECIES_SUMMARY.csv'   DELIMITER ',' CSV HEADER;
COPY fs_fiadb.OZONE_VALIDATION        FROM 'C:\Users\pmiles\Documents\Gamma\FIADB_PG_1_8_0_00\BatchScripts\..\CSV_DATA\de_OZONE_VALIDATION.csv'        DELIMITER ',' CSV HEADER;
COPY fs_fiadb.OZONE_VISIT             FROM 'C:\Users\pmiles\Documents\Gamma\FIADB_PG_1_8_0_00\BatchScripts\..\CSV_DATA\de_OZONE_VISIT.csv'             DELIMITER ',' CSV HEADER;
COPY fs_fiadb.P2VEG_SUBPLOT_SPP       FROM 'C:\Users\pmiles\Documents\Gamma\FIADB_PG_1_8_0_00\BatchScripts\..\CSV_DATA\de_P2VEG_SUBPLOT_SPP.csv'       DELIMITER ',' CSV HEADER;
COPY fs_fiadb.P2VEG_SUBP_STRUCTURE    FROM 'C:\Users\pmiles\Documents\Gamma\FIADB_PG_1_8_0_00\BatchScripts\..\CSV_DATA\de_P2VEG_SUBP_STRUCTURE.csv'    DELIMITER ',' CSV HEADER;
COPY fs_fiadb.PLOTSNAP                FROM 'C:\Users\pmiles\Documents\Gamma\FIADB_PG_1_8_0_00\BatchScripts\..\CSV_DATA\de_PLOTSNAP.csv'                DELIMITER ',' CSV HEADER;
COPY fs_fiadb.PLOT_REGEN              FROM 'C:\Users\pmiles\Documents\Gamma\FIADB_PG_1_8_0_00\BatchScripts\..\CSV_DATA\de_PLOT_REGEN.csv'              DELIMITER ',' CSV HEADER;
COPY fs_fiadb.SITETREE                FROM 'C:\Users\pmiles\Documents\Gamma\FIADB_PG_1_8_0_00\BatchScripts\..\CSV_DATA\de_SITETREE.csv'                DELIMITER ',' CSV HEADER;
COPY fs_fiadb.SOILS_EROSION           FROM 'C:\Users\pmiles\Documents\Gamma\FIADB_PG_1_8_0_00\BatchScripts\..\CSV_DATA\de_SOILS_EROSION.csv'           DELIMITER ',' CSV HEADER;
COPY fs_fiadb.SOILS_LAB               FROM 'C:\Users\pmiles\Documents\Gamma\FIADB_PG_1_8_0_00\BatchScripts\..\CSV_DATA\de_SOILS_LAB.csv'               DELIMITER ',' CSV HEADER;
COPY fs_fiadb.SOILS_SAMPLE_LOC        FROM 'C:\Users\pmiles\Documents\Gamma\FIADB_PG_1_8_0_00\BatchScripts\..\CSV_DATA\de_SOILS_SAMPLE_LOC.csv'        DELIMITER ',' CSV HEADER;
COPY fs_fiadb.SOILS_VISIT             FROM 'C:\Users\pmiles\Documents\Gamma\FIADB_PG_1_8_0_00\BatchScripts\..\CSV_DATA\de_SOILS_VISIT.csv'             DELIMITER ',' CSV HEADER;
COPY fs_fiadb.SUBPLOT                 FROM 'C:\Users\pmiles\Documents\Gamma\FIADB_PG_1_8_0_00\BatchScripts\..\CSV_DATA\de_SUBPLOT.csv'                 DELIMITER ',' CSV HEADER;
COPY fs_fiadb.SUBPLOT_REGEN           FROM 'C:\Users\pmiles\Documents\Gamma\FIADB_PG_1_8_0_00\BatchScripts\..\CSV_DATA\de_SUBPLOT_REGEN.csv'           DELIMITER ',' CSV HEADER;
COPY fs_fiadb.SUBP_COND               FROM 'C:\Users\pmiles\Documents\Gamma\FIADB_PG_1_8_0_00\BatchScripts\..\CSV_DATA\de_SUBP_COND.csv'               DELIMITER ',' CSV HEADER;
COPY fs_fiadb.SEEDLING_REGEN          FROM 'C:\Users\pmiles\Documents\Gamma\FIADB_PG_1_8_0_00\BatchScripts\..\CSV_DATA\de_SEEDLING_REGEN.csv'          DELIMITER ',' CSV HEADER;
COPY fs_fiadb.TREE_GRM_BEGIN          FROM 'C:\Users\pmiles\Documents\Gamma\FIADB_PG_1_8_0_00\BatchScripts\..\CSV_DATA\de_TREE_GRM_BEGIN.csv'          DELIMITER ',' CSV HEADER;
COPY fs_fiadb.TREE_GRM_MIDPT          FROM 'C:\Users\pmiles\Documents\Gamma\FIADB_PG_1_8_0_00\BatchScripts\..\CSV_DATA\de_TREE_GRM_MIDPT.csv'          DELIMITER ',' CSV HEADER;
COPY fs_fiadb.VEG_PLOT_SPECIES        FROM 'C:\Users\pmiles\Documents\Gamma\FIADB_PG_1_8_0_00\BatchScripts\..\CSV_DATA\de_VEG_PLOT_SPECIES.csv'        DELIMITER ',' CSV HEADER;
COPY fs_fiadb.VEG_SUBPLOT             FROM 'C:\Users\pmiles\Documents\Gamma\FIADB_PG_1_8_0_00\BatchScripts\..\CSV_DATA\de_VEG_SUBPLOT.csv'             DELIMITER ',' CSV HEADER;
COPY fs_fiadb.VEG_SUBPLOT_SPP         FROM 'C:\Users\pmiles\Documents\Gamma\FIADB_PG_1_8_0_00\BatchScripts\..\CSV_DATA\de_VEG_SUBPLOT_SPP.csv'         DELIMITER ',' CSV HEADER;
COPY fs_fiadb.VEG_QUADRAT             FROM 'C:\Users\pmiles\Documents\Gamma\FIADB_PG_1_8_0_00\BatchScripts\..\CSV_DATA\de_VEG_QUADRAT.csv'             DELIMITER ',' CSV HEADER;
COPY fs_fiadb.VEG_VISIT               FROM 'C:\Users\pmiles\Documents\Gamma\FIADB_PG_1_8_0_00\BatchScripts\..\CSV_DATA\de_VEG_VISIT.csv'               DELIMITER ',' CSV HEADER;
COPY fs_fiadb.TREE_WOODLAND_STEMS     FROM 'C:\Users\pmiles\Documents\Gamma\FIADB_PG_1_8_0_00\BatchScripts\..\CSV_DATA\de_TREE_WOODLAND_STEMS.csv'     DELIMITER ',' CSV HEADER;
COPY fs_fiadb.TREE_GRM_THRESHOLD      FROM 'C:\Users\pmiles\Documents\Gamma\FIADB_PG_1_8_0_00\BatchScripts\..\CSV_DATA\de_TREE_GRM_THRESHOLD.csv'     DELIMITER ',' CSV HEADER;
