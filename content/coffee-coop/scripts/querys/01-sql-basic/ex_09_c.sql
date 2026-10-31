-- Exercise 09
-- a
SELECT
    T1.analysis_id AS analysis,
    T1.delivery_id AS delivery,
    T1.moisture_pct AS moisture_pct,
    T1.yield_factor AS yield_factor,
    T1.cup_score AS cup_score
FROM 
    buy.quality_analyses AS T1
WHERE T1.delivery_id LIKE '%20260930%' 
    AND T1.is_accepted = FALSE 
    AND T1.observations IS NOT NULL
ORDER BY 
    T1.defects_pct DESC;

/***
      analysis      |      delivery       | moisture_pct | yield_factor | cup_score
--------------------+---------------------+--------------+--------------+-----------
 QA-20260930-000104 | DLV-20260930-000214 |        17.68 |        97.46 |     82.59
 QA-20260930-000068 | DLV-20260930-000165 |        16.13 |       100.22 |
 QA-20260930-000119 | DLV-20260930-000253 |         8.39 |       106.52 |     84.33
 QA-20260930-000086 | DLV-20260930-000147 |        15.20 |        96.57 |
 QA-20260930-000113 | DLV-20260930-000223 |         9.57 |        99.70 |     85.05
 QA-20260930-000022 | DLV-20260930-000070 |        12.95 |       103.55 |
 QA-20260930-000018 | DLV-20260930-000006 |        17.24 |       103.31 |     79.98
**/