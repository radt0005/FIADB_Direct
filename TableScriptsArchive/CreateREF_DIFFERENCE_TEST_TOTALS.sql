-- Create table
create table FS_FIADB.REF_DIFFERENCE_TEST_TOTALS
(
  cn                   VARCHAR(34) not null,
  comparison           TEXT,
  comparison_type      TEXT,
  attribute_nbr        VARCHAR(10),
  script               TEXT,
  comment_1            TEXT,
  sql_col_1            TEXT,
  comment_2            TEXT,
  sql_col_2            TEXT,
  comment_3            TEXT,
  sql_col_3            TEXT,
  comment_4            TEXT,
  sql_col_4            TEXT,
  comment_5            TEXT,
  sql_col_5            TEXT,
  comment_6            TEXT,
  sql_col_6            TEXT,
  comment_7            TEXT,
  sql_col_7            TEXT,
  comment_8            TEXT,
  sql_col_8            TEXT,
  comment_9            TEXT,
  sql_col_9            TEXT,
  comment_10           TEXT,
  sql_col_10           TEXT,
  comment_11           TEXT,
  sql_col_11           TEXT,
  comment_12           TEXT,
  sql_col_12           TEXT,
  comment_13           TEXT,
  sql_col_13           TEXT,
  comment_14           TEXT,
  sql_col_14           TEXT,
  comment_15           TEXT,
  sql_col_15           TEXT,
  comment_16           TEXT,
  sql_col_16           TEXT,
  comment_17           TEXT,
  sql_col_17           TEXT,
  comment_18           TEXT,
  sql_col_18           TEXT,
  comment_19           TEXT,
  sql_col_19           TEXT,
  comment_20           TEXT,
  sql_col_20           TEXT,
  comment_21           TEXT,
  sql_col_21           TEXT,
  comment_22           TEXT,
  sql_col_22           TEXT,
  comment_23           TEXT,
  sql_col_23           TEXT,
  comment_24           TEXT,
  sql_col_24           TEXT,
  comment_25           TEXT,
  sql_col_25           TEXT,
  comment_26           TEXT,
  sql_col_26           TEXT,
  created_by           VARCHAR(30),
  created_date         TIMESTAMP(0),
  created_in_instance  VARCHAR(6),
  modified_by          VARCHAR(30),
  modified_date        TIMESTAMP(0),
  modified_in_instance VARCHAR(6)
);
-- Create/Recreate primary, unique and foreign key constraints 
alter table FS_FIADB.REF_DIFFERENCE_TEST_TOTALS
  add constraint RDTT_PK primary key (CN);
