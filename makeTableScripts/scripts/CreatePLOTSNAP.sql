CREATE TABLE fs_fiadb.plotsnap
(
cn                       VARCHAR(34) NOT NULL,
srv_cn                   VARCHAR(34) NOT NULL,
cty_cn                   VARCHAR(34) NOT NULL,
prev_plt_cn              VARCHAR(34),
invyr                    INTEGER NOT NULL,
statecd                  INTEGER NOT NULL,
unitcd                   INTEGER NOT NULL,
countycd                 INTEGER NOT NULL,
plot                     INTEGER NOT NULL,
plot_status_cd           INTEGER,
plot_nonsample_reasn_cd  INTEGER,
measyear                 INTEGER,
measmon                  INTEGER,
measday                  INTEGER,
remper                   DECIMAL(3,1),
kindcd                   INTEGER NOT NULL,
designcd                 INTEGER,
rddistcd                 INTEGER,
watercd                  INTEGER,
lat                      DECIMAL(8,6),
lon                      DECIMAL(9,6),
elev                     INTEGER,
grow_typ_cd              INTEGER,
mort_typ_cd              INTEGER,
p2panel                  INTEGER,
p3panel                  INTEGER,
ecosubcd                 VARCHAR(7),
congcd                   INTEGER,
manual                   DECIMAL(3,1) NOT NULL,
manual_db                DECIMAL(3,1),
subpanel                 INTEGER,
kindcd_nc                INTEGER,
qa_status                INTEGER,
created_by               VARCHAR(30),
created_date             TIMESTAMP(0),
created_in_instance      VARCHAR(6),
modified_by              VARCHAR(30),
modified_date            TIMESTAMP(0),
modified_in_instance     VARCHAR(6),
microplot_loc            VARCHAR(12),
declination              DECIMAL(4,1),
emap_hex                 INTEGER,
samp_method_cd           INTEGER,
subp_examine_cd          INTEGER NOT NULL,
macro_breakpoint_dia     INTEGER,
intensity                VARCHAR(3),
cycle                    INTEGER,
subcycle                 INTEGER,
eco_unit_pnw             VARCHAR(10),
topo_position_pnw        VARCHAR(2),
eval_grp_cn              VARCHAR(34) NOT NULL,
eval_grp                 INTEGER NOT NULL,
expall                   DOUBLE PRECISION,
expcurr                  DOUBLE PRECISION,
expvol                   DOUBLE PRECISION,
expgrow                  DOUBLE PRECISION,
expmort                  DOUBLE PRECISION,
expremv                  DOUBLE PRECISION,
expchng                  DOUBLE PRECISION,
expdwm                   DOUBLE PRECISION,
expregen                 DOUBLE PRECISION,
expinv                   DOUBLE PRECISION,
expp2veg                 DOUBLE PRECISION,
expsoil                  DOUBLE PRECISION,
expcrwn                  DOUBLE PRECISION,
expgrndlyr               DOUBLE PRECISION,
adj_expall               DOUBLE PRECISION,
adj_expcurr              DOUBLE PRECISION,
adj_expvol_macr          DOUBLE PRECISION,
adj_expvol_subp          DOUBLE PRECISION,
adj_expvol_micr          DOUBLE PRECISION,
adj_expgrow_macr         DOUBLE PRECISION,
adj_expgrow_subp         DOUBLE PRECISION,
adj_expgrow_micr         DOUBLE PRECISION,
adj_expmort_macr         DOUBLE PRECISION,
adj_expmort_subp         DOUBLE PRECISION,
adj_expmort_micr         DOUBLE PRECISION,
adj_expremv_macr         DOUBLE PRECISION,
adj_expremv_subp         DOUBLE PRECISION,
adj_expremv_micr         DOUBLE PRECISION,
adj_expchng_macr         DOUBLE PRECISION,
adj_expchng_subp         DOUBLE PRECISION,
adj_expchng_micr         DOUBLE PRECISION,
adj_expdwm_cwd           DOUBLE PRECISION,
adj_expdwm_fwd_sm        DOUBLE PRECISION,
adj_expdwm_fwd_lg        DOUBLE PRECISION,
adj_expdwm_duff          DOUBLE PRECISION,
adj_expdwm_pile          DOUBLE PRECISION,
adj_expregen_micr        DOUBLE PRECISION,
adj_expinv_subp          DOUBLE PRECISION,
adj_expp2veg_subp        DOUBLE PRECISION,
adj_expsoil              DOUBLE PRECISION,
adj_expgrndlyr_microquad DOUBLE PRECISION
);