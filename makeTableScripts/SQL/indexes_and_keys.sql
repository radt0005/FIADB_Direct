--indices, keys
SELECT
info1.table_name,
info1.index_name, 
info1.column_name,
info2.uniqueness,
info3.constraint_type
FROM
(SELECT *--table_name, index_name, column_name
FROM DBA_IND_COLUMNS
WHERE table_owner IN ('FS_FIADB', 'FS_FIA_REFERENCE')
--AND table_name = '&tbl'
ORDER BY
    table_name,
    index_name,
    column_position) info1
JOIN 
(SELECT *--table_name, index_name, uniqueness
  FROM all_indexes
 WHERE table_owner IN ('FS_FIADB', 'FS_FIA_REFERENCE')
 --and table_name = '&tbl'
 ) info2
ON (info1.table_name = info2.table_name AND
    info1.index_name = info2.index_name)
LEFT JOIN
(SELECT cols.table_name, cols.column_name, cons.CONSTRAINT_NAME, cons.constraint_type
FROM all_constraints cons, all_cons_columns cols
WHERE cons.constraint_type IN ('P', 'U')
AND cons.constraint_name = cols.constraint_name
AND cons.owner = cols.owner
AND cons.owner IN ('FS_FIADB', 'FS_FIA_REFERENCE')
--AND cols.table_name = '&tbl'
ORDER BY cons.constraint_type, cols.POSITION) info3
ON (info1.table_name = info3.table_name AND
    info1.column_name = info3.column_name AND
    info1.index_name = info3.constraint_name);
