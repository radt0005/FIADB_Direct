-- Create table
create table FS_FIADB.REF_DAMAGE_AGENT
(
  code                 INT not null,
  common_name          VARCHAR(80) not null,
  scientific_name      VARCHAR(80),
  threshold            VARCHAR(2000),
  created_by           VARCHAR(30),
  created_date         TIMESTAMP(0),
  created_in_instance  VARCHAR(6),
  modified_by          VARCHAR(30),
  modified_date        TIMESTAMP(0),
  modified_in_instance VARCHAR(6),
  dag_code             INT
);
-- Add comments to the table 
comment on table FS_FIADB.REF_DAMAGE_AGENT
  is 'Tree damage agents. Table created for 6.0 TREE DAMAGE AGENT protocols';
-- Add comments to the columns 
comment on column FS_FIADB.REF_DAMAGE_AGENT.code
  is 'Tree damage agent code';
comment on column FS_FIADB.REF_DAMAGE_AGENT.common_name
  is 'The common name of the tree damage agent';
comment on column FS_FIADB.REF_DAMAGE_AGENT.scientific_name
  is 'The scientific name of the tree damage agent';
comment on column FS_FIADB.REF_DAMAGE_AGENT.threshold
  is 'The threshold required before recording the tree damage agent';
comment on column FS_FIADB.REF_DAMAGE_AGENT.created_by
  is 'Created by';
comment on column FS_FIADB.REF_DAMAGE_AGENT.created_date
  is 'Created Date ';
comment on column FS_FIADB.REF_DAMAGE_AGENT.created_in_instance
  is 'Created in Instance ';
comment on column FS_FIADB.REF_DAMAGE_AGENT.modified_by
  is 'Modified by ';
comment on column FS_FIADB.REF_DAMAGE_AGENT.modified_date
  is 'Modified Date';
comment on column FS_FIADB.REF_DAMAGE_AGENT.modified_in_instance
  is 'Modified in Instance ';
-- Create/Recreate primary, unique and foreign key constraints 
alter table FS_FIADB.REF_DAMAGE_AGENT
  add constraint DA_PK primary key (CODE);
alter table FS_FIADB.REF_DAMAGE_AGENT
  add constraint DA_DAG_FK foreign key (DAG_CODE)
  references FS_FIADB.REF_DAMAGE_AGENT_GROUP (CODE);