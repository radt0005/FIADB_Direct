CREATE TABLE fs_fiadb.tree
(
cn                             VARCHAR(34) NOT NULL,
plt_cn                         VARCHAR(34) NOT NULL,
prev_tre_cn                    VARCHAR(34),
invyr                          INTEGER NOT NULL,
statecd                        INTEGER NOT NULL,
unitcd                         INTEGER NOT NULL,
countycd                       INTEGER NOT NULL,
plot                           INTEGER NOT NULL,
subp                           INTEGER NOT NULL,
tree                           INTEGER NOT NULL,
condid                         INTEGER NOT NULL,
azimuth                        INTEGER,
dist                           DECIMAL(4,1),
prevcond                       INTEGER,
statuscd                       INTEGER NOT NULL,
spcd                           DOUBLE PRECISION,
spgrpcd                        INTEGER,
dia                            DECIMAL(5,2),
diahtcd                        INTEGER,
ht                             INTEGER,
htcd                           INTEGER,
actualht                       INTEGER,
treeclcd                       INTEGER,
cr                             INTEGER,
cclcd                          INTEGER,
treegrcd                       INTEGER,
agentcd                        INTEGER,
cull                           INTEGER,
damloc1                        INTEGER,
damtyp1                        INTEGER,
damsev1                        INTEGER,
damloc2                        INTEGER,
damtyp2                        INTEGER,
damsev2                        INTEGER,
decaycd                        INTEGER,
stocking                       DECIMAL(7,4),
wdldstem                       INTEGER,
volcfnet                       DECIMAL(11,6),
volcfgrs                       DECIMAL(11,6),
volcsnet                       DECIMAL(11,6),
volcsgrs                       DECIMAL(11,6),
volbfnet                       DECIMAL(11,6),
volbfgrs                       DECIMAL(11,6),
volcfsnd                       DECIMAL(11,6),
diacheck                       INTEGER,
mortyr                         INTEGER,
salvcd                         INTEGER,
uncrcd                         INTEGER,
cposcd                         INTEGER,
clightcd                       INTEGER,
cvigorcd                       INTEGER,
cdencd                         INTEGER,
cdiebkcd                       INTEGER,
transcd                        INTEGER,
treehistcd                     INTEGER,
bhage                          INTEGER,
totage                         INTEGER,
culldead                       INTEGER,
cullform                       INTEGER,
cullmstop                      INTEGER,
cullbf                         INTEGER,
cullcf                         INTEGER,
bfsnd                          INTEGER,
cfsnd                          INTEGER,
sawht                          INTEGER,
boleht                         INTEGER,
formcl                         INTEGER,
htcalc                         INTEGER,
hrdwd_clump_cd                 INTEGER,
sitree                         INTEGER,
created_by                     VARCHAR(30),
created_date                   TIMESTAMP(0),
created_in_instance            VARCHAR(6),
modified_by                    VARCHAR(30),
modified_date                  TIMESTAMP(0),
modified_in_instance           VARCHAR(6),
mortcd                         INTEGER,
htdmp                          DECIMAL(3,1),
roughcull                      INTEGER,
mist_cl_cd                     INTEGER,
cull_fld                       INTEGER,
reconcilecd                    INTEGER,
prevdia                        DECIMAL(5,2),
p2a_grm_flg                    VARCHAR(1),
treeclcd_ners                  INTEGER,
treeclcd_srs                   INTEGER,
treeclcd_ncrs                  INTEGER,
treeclcd_rmrs                  INTEGER,
standing_dead_cd               INTEGER,
prev_status_cd                 INTEGER,
prev_wdldstem                  INTEGER,
tpa_unadj                      DECIMAL(11,6),
drybio_bole                    DECIMAL(13,6),
drybio_stump                   DECIMAL(13,6),
drybio_bg                      DECIMAL(13,6),
carbon_ag                      DECIMAL(13,6),
carbon_bg                      DECIMAL(13,6),
cycle                          INTEGER,
subcycle                       INTEGER,
bored_cd_pnwrs                 INTEGER,
damloc1_pnwrs                  INTEGER,
damloc2_pnwrs                  INTEGER,
diacheck_pnwrs                 INTEGER,
dmg_agent1_cd_pnwrs            INTEGER,
dmg_agent2_cd_pnwrs            INTEGER,
dmg_agent3_cd_pnwrs            INTEGER,
mist_cl_cd_pnwrs               INTEGER,
severity1_cd_pnwrs             INTEGER,
severity1a_cd_pnwrs            INTEGER,
severity1b_cd_pnwrs            INTEGER,
severity2_cd_pnwrs             INTEGER,
severity2a_cd_pnwrs            INTEGER,
severity2b_cd_pnwrs            INTEGER,
severity3_cd_pnwrs             INTEGER,
unknown_damtyp1_pnwrs          INTEGER,
unknown_damtyp2_pnwrs          INTEGER,
prev_pntn_srs                  INTEGER,
disease_srs                    INTEGER,
dieback_severity_srs           INTEGER,
damage_agent_cd1               INTEGER,
damage_agent_cd2               INTEGER,
damage_agent_cd3               INTEGER,
centroid_dia                   DECIMAL(4,1),
centroid_dia_ht                DECIMAL(4,1),
centroid_dia_ht_actual         DECIMAL(4,1),
upper_dia                      DECIMAL(4,1),
upper_dia_ht                   DECIMAL(4,1),
volcssnd                       DECIMAL(11,6),
drybio_sawlog                  DECIMAL(13,6),
damage_agent_cd1_srs           INTEGER,
damage_agent_cd2_srs           INTEGER,
damage_agent_cd3_srs           INTEGER,
drybio_ag                      DECIMAL(13,6),
actualht_calc                  INTEGER,
actualht_calc_cd               INTEGER,
cull_bf_rotten                 DECIMAL(12,9),
cull_bf_rotten_cd              INTEGER,
cull_bf_rough                  DECIMAL(12,9),
cull_bf_rough_cd               INTEGER,
prevdia_fld                    DOUBLE PRECISION,
treeclcd_31_ncrs               INTEGER,
tree_grade_ncrs                INTEGER,
boughs_available_ncrs          INTEGER,
boughs_hrvst_ncrs              INTEGER,
treeclcd_31_ners               INTEGER,
agentcd_ners                   INTEGER,
bfsndcd_ners                   INTEGER,
agechkcd_rmrs                  INTEGER,
prev_actualht_rmrs             INTEGER,
prev_agechkcd_rmrs             INTEGER,
prev_bhage_rmrs                INTEGER,
prev_ht_rmrs                   INTEGER,
prev_totage_rmrs               INTEGER,
prev_treeclcd_rmrs             INTEGER,
radagecd_rmrs                  INTEGER,
radgrw_rmrs                    INTEGER,
volbsgrs                       DECIMAL(11,6),
volbsnet                       DECIMAL(11,6),
sapling_fusiform_srs           INTEGER,
epiphyte_pnwrs                 INTEGER,
root_ht_pnwrs                  INTEGER,
cavity_use_pnwrs               VARCHAR(1),
core_length_pnwrs              DECIMAL(4,1),
culturally_killed_pnwrs        INTEGER,
dia_est_pnwrs                  DECIMAL(4,1),
gst_pnwrs                      VARCHAR(1),
inc10yr_pnwrs                  INTEGER,
inc5yrht_pnwrs                 DECIMAL(3,1),
inc5yr_pnwrs                   INTEGER,
ring_count_inner_2inches_pnwrs INTEGER,
ring_count_pnwrs               INTEGER,
snag_dis_cd_pnwrs              INTEGER,
coneprescd1                    INTEGER,
coneprescd2                    INTEGER,
coneprescd3                    INTEGER,
mastcd                         INTEGER,
voltsgrs                       DECIMAL(13,6),
voltsgrs_bark                  DECIMAL(13,6),
voltssnd                       DECIMAL(13,6),
voltssnd_bark                  DECIMAL(13,6),
volcfgrs_stump                 DECIMAL(13,6),
volcfgrs_stump_bark            DECIMAL(13,6),
volcfsnd_stump                 DECIMAL(13,6),
volcfsnd_stump_bark            DECIMAL(13,6),
volcfgrs_bark                  DECIMAL(13,6),
volcfgrs_top                   DECIMAL(13,6),
volcfgrs_top_bark              DECIMAL(13,6),
volcfsnd_bark                  DECIMAL(13,6),
volcfsnd_top                   DECIMAL(13,6),
volcfsnd_top_bark              DECIMAL(13,6),
volcfnet_bark                  DECIMAL(13,6),
volcsgrs_bark                  DECIMAL(13,6),
volcssnd_bark                  DECIMAL(13,6),
volcsnet_bark                  DECIMAL(13,6),
drybio_stem                    DECIMAL(13,6),
drybio_stem_bark               DECIMAL(13,6),
drybio_stump_bark              DECIMAL(13,6),
drybio_bole_bark               DECIMAL(13,6),
drybio_branch                  DECIMAL(13,6),
drybio_foliage                 DECIMAL(13,6),
drybio_sawlog_bark             DECIMAL(13,6),
prev_actualht_fld              INTEGER,
prev_ht_fld                    INTEGER
);
create index TRE_NAT_I on FS_FIADB.TREE (STATECD, INVYR, UNITCD, COUNTYCD, PLOT, SUBP, TREE);
create index TRE_SPGRPCD on FS_FIADB.TREE (SPGRPCD);
create index TRE_PLT_CN_CONDID on FS_FIADB.TREE (PLT_CN, CONDID);
create index TRE_PLT_FK_I on FS_FIADB.TREE (PLT_CN);
create index TRE_SPCD on FS_FIADB.TREE (SPCD);
alter table FS_FIADB.TREE add constraint TRE_PK primary key (CN);
alter table FS_FIADB.TREE add constraint TRE_UK unique (PLT_CN, SUBP, TREE);
alter table FS_FIADB.TREE add constraint TRE_PLT_FK foreign key (PLT_CN) references FS_FIADB.PLOT (CN);