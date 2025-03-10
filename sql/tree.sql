SELECT peg.eval_grp,
       tree.plt_cn,
       tree.condid,
       tree.cn tre_cn,
       tree.tpa_unadj,
       CASE
           WHEN tree.dia IS NULL THEN pop_stratum.adj_factor_subp
           ELSE CASE least(tree.dia, 5 - 0.001)
                    WHEN tree.dia THEN pop_stratum.adj_factor_micr
                    ELSE CASE least(tree.dia, coalesce(plot.macro_breakpoint_dia, 9999) - 0.001)
                             WHEN tree.dia THEN pop_stratum.adj_factor_subp
                             ELSE pop_stratum.adj_factor_macr
                         END
                END
       END adj_factor,
       pop_stratum.expns
FROM fs_fiadb.pop_eval_grp peg
JOIN fs_fiadb.pop_eval_typ pet ON (pet.eval_grp_cn = peg.cn)
JOIN fs_fiadb.pop_eval pev ON (pev.cn = pet.eval_cn)
JOIN fs_fiadb.pop_estn_unit peu ON (pev.cn = peu.eval_cn)
JOIN fs_fiadb.pop_stratum pop_stratum ON (peu.cn = pop_stratum.estn_unit_cn)
JOIN fs_fiadb.pop_plot_stratum_assgn pop_plot_stratum_assgn ON (pop_plot_stratum_assgn.stratum_cn = pop_stratum.cn)
JOIN fs_fiadb.plot ON (pop_plot_stratum_assgn.plt_cn = plot.cn)
JOIN fs_fiadb.plotgeom ON (plot.cn = plotgeom.cn)
JOIN fs_fiadb.cond ON (cond.plt_cn = plot.cn)
JOIN fs_fiadb.tree ON (tree.plt_cn = cond.plt_cn
                       AND tree.condid = cond.condid)
WHERE tree.statuscd = 1
  AND cond.cond_status_cd = 1
  AND pet.eval_typ = 'EXPVOL'
  AND peg.eval_grp IN (&EVAL_GRP)
  AND 1=1
