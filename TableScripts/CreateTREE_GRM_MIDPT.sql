CREATE TABLE fs_fiadb.tree_grm_midpt
(
tre_cn              VARCHAR(34) NOT NULL,
prev_tre_cn         VARCHAR(34),
plt_cn              VARCHAR(34),
statecd             INTEGER,
subptyp             INTEGER,
spcd                INTEGER,
statuscd            INTEGER,
dia                 DECIMAL(5,2),
ht                  INTEGER,
actualht            INTEGER,
cr                  INTEGER,
standing_dead_cd    INTEGER,
diahtcd             INTEGER,
cull                INTEGER,
roughcull           INTEGER,
cullform            INTEGER,
cullmstop           INTEGER,
decaycd             INTEGER,
treeclcd            INTEGER,
htdmp               DECIMAL(3,1),
wdldstem            INTEGER,
stdorgcd            INTEGER,
sitree              INTEGER,
balive              DECIMAL(9,4),
voltsgrs            DECIMAL(13,6),
voltsgrs_bark       DECIMAL(13,6),
voltssnd            DECIMAL(13,6),
voltssnd_bark       DECIMAL(13,6),
volcfgrs_stump      DECIMAL(13,6),
volcfgrs_stump_bark DECIMAL(13,6),
volcfsnd_stump      DECIMAL(13,6),
volcfsnd_stump_bark DECIMAL(13,6),
volcfgrs            DECIMAL(13,6),
volcfgrs_bark       DECIMAL(13,6),
volcfgrs_top        DECIMAL(13,6),
volcfgrs_top_bark   DECIMAL(13,6),
volcfsnd            DECIMAL(13,6),
volcfsnd_bark       DECIMAL(13,6),
volcfsnd_top        DECIMAL(13,6),
volcfsnd_top_bark   DECIMAL(13,6),
volcfnet            DECIMAL(13,6),
volcfnet_bark       DECIMAL(13,6),
volcsgrs            DECIMAL(13,6),
volcsgrs_bark       DECIMAL(13,6),
volcssnd            DECIMAL(13,6),
volcssnd_bark       DECIMAL(13,6),
volcsnet            DECIMAL(13,6),
volcsnet_bark       DECIMAL(13,6),
volbfgrs            DECIMAL(13,6),
volbfnet            DECIMAL(13,6),
volbsgrs            DECIMAL(13,6),
volbsnet            DECIMAL(13,6),
drybio_stem         DECIMAL(13,6),
drybio_stem_bark    DECIMAL(13,6),
drybio_stump        DECIMAL(13,6),
drybio_stump_bark   DECIMAL(13,6),
drybio_bole         DECIMAL(13,6),
drybio_bole_bark    DECIMAL(13,6),
drybio_branch       DECIMAL(13,6),
drybio_foliage      DECIMAL(13,6),
drybio_ag           DECIMAL(13,6),
drybio_bg           DECIMAL(13,6),
carbon_ag           DECIMAL(13,6),
carbon_bg           DECIMAL(13,6),
drybio_sawlog       DECIMAL(13,6),
drybio_sawlog_bark  DECIMAL(13,6),
created_date        TIMESTAMP(0),
modified_date       TIMESTAMP(0)
);
create index TRE_GRM_MIDPT_IND1 on FS_FIADB.TREE_GRM_MIDPT (PLT_CN);
create index TRE_GRM_MIDPT_IND2 on FS_FIADB.TREE_GRM_MIDPT (PREV_TRE_CN);
create index TRE_GRM_MIDPT_IND3 on FS_FIADB.TREE_GRM_MIDPT (STATECD);
alter table FS_FIADB.TREE_GRM_MIDPT add constraint TRE_GRM_MIDPT_PK primary key (TRE_CN);
alter table FS_FIADB.TREE_GRM_MIDPT add constraint TRE_GRM_MIDPT_FK foreign key (TRE_CN) references FS_FIADB.TREE (CN);