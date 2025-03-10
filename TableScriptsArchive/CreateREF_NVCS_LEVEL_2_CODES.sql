-- Create table
create table FS_FIADB.REF_NVCS_LEVEL_2_CODES
(
  cn                    VARCHAR(34) not null,
  primary_class         VARCHAR(8) not null,
  hierarchy_level       SMALLINT not null,
  hierarchy_level_label VARCHAR(30) not null,
  nvcs_code             VARCHAR(20) not null,
  meaning               VARCHAR(100) not null,
  note                  VARCHAR(1000),
  created_by            VARCHAR(30),
  created_date          TIMESTAMP(0),
  created_in_instance   VARCHAR(6),
  modified_by           VARCHAR(30),
  modified_date         TIMESTAMP(0),
  modified_in_instance  VARCHAR(6),
  constraint RNVCSHS2_PK primary key (CN)
);
-- Add comments to the table 
comment on table FS_FIADB.REF_NVCS_LEVEL_2_CODES
  is 'Defines the codes for the second level of the National Vegetation Classification System (NVCS) hierarchy';
-- Add comments to the columns 
comment on column FS_FIADB.REF_NVCS_LEVEL_2_CODES.cn
  is 'Unique record identifier for the current hierarchy record';
comment on column FS_FIADB.REF_NVCS_LEVEL_2_CODES.primary_class
  is 'The primary classification of the algorithm [NATURAL|CULTURAL]';
comment on column FS_FIADB.REF_NVCS_LEVEL_2_CODES.hierarchy_level
  is 'An integer value indicating at what level in the National Vegetation Classification System hierarchy the current record exists';
comment on column FS_FIADB.REF_NVCS_LEVEL_2_CODES.hierarchy_level_label
  is 'A label assigned to the current level of the National Vegetation Classification System hierarchy';
comment on column FS_FIADB.REF_NVCS_LEVEL_2_CODES.nvcs_code
  is 'A code representing the classification at the current level of the National Vegetation Classification System hierarchy';
comment on column FS_FIADB.REF_NVCS_LEVEL_2_CODES.meaning
  is 'The meaning of the code at the current level of the National Vegetation Classification System hierarchy';
comment on column FS_FIADB.REF_NVCS_LEVEL_2_CODES.note
  is 'Any remark relevant to the hierarchy structure record.';
comment on column FS_FIADB.REF_NVCS_LEVEL_2_CODES.created_by
  is 'Created by';
comment on column FS_FIADB.REF_NVCS_LEVEL_2_CODES.created_date
  is 'Created date';
comment on column FS_FIADB.REF_NVCS_LEVEL_2_CODES.created_in_instance
  is 'Created in instance';
comment on column FS_FIADB.REF_NVCS_LEVEL_2_CODES.modified_by
  is 'Modified by';
comment on column FS_FIADB.REF_NVCS_LEVEL_2_CODES.modified_date
  is 'Modified date';
comment on column FS_FIADB.REF_NVCS_LEVEL_2_CODES.modified_in_instance
  is 'Modified in instance';
-- Create/Recreate primary, unique and foreign key constraints 
alter table FS_FIADB.REF_NVCS_LEVEL_2_CODES
  add constraint RNVCSHS2_UK unique (PRIMARY_CLASS, NVCS_CODE);
