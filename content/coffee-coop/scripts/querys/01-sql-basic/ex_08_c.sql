-- Exercise 08
-- b
SELECT 
    T1.delivery_id AS delivery,
    T1.farm_id AS farm_id,
    T1.collection_point_id AS collection_point_id,
    T1.delivered_at AS received_at,
    T1.coffee_type AS coffee_type,
    T1.gross_weight_kg AS gross_weight_kg
FROM 
    buy.deliveries AS T1
WHERE 
    T1.delivery_id LIKE '%20260930%' AND (T1.coffee_type = 'wet_parchment' or T1.coffee_type = 'cherry') 
ORDER BY 
    T1.gross_weight_kg DESC;

/***
      delivery       | farm_id | collection_point_id |     received_at     |  coffee_type  | gross_weight_kg
---------------------+---------+---------------------+---------------------+---------------+-----------------
 DLV-20260930-000081 |   19338 |                 117 | 2026-09-30 09:17:37 | cherry        |          475.13
 DLV-20260930-000187 |  231839 |                 159 | 2026-09-30 12:47:52 | cherry        |          339.30
 DLV-20260930-000105 |   13478 |                  37 | 2026-09-30 09:57:09 | wet_parchment |          277.63
 DLV-20260930-000028 |  182397 |                 133 | 2026-09-30 07:13:46 | wet_parchment |          258.00
 DLV-20260930-000133 |   44726 |                  59 | 2026-09-30 10:51:03 | cherry        |          254.83
 DLV-20260930-000094 |   99627 |                 133 | 2026-09-30 09:31:20 | cherry        |          246.96
 DLV-20260930-000129 |   89312 |                  76 | 2026-09-30 10:44:39 | wet_parchment |          206.71
 DLV-20260930-000161 |  101318 |                  24 | 2026-09-30 12:06:51 | wet_parchment |          197.04
 DLV-20260930-000046 |   85553 |                 140 | 2026-09-30 07:30:47 | wet_parchment |          186.73
 DLV-20260930-000248 |  215660 |                 166 | 2026-09-30 14:59:13 | cherry        |          159.89
 DLV-20260930-000052 |   92329 |                  96 | 2026-09-30 07:43:27 | wet_parchment |          154.42
 DLV-20260930-000260 |  215048 |                 144 | 2026-09-30 15:14:37 | cherry        |          149.08
 DLV-20260930-000217 |   91444 |                  52 | 2026-09-30 14:02:43 | wet_parchment |          132.86
 DLV-20260930-000237 |  125199 |                  46 | 2026-09-30 14:45:02 | wet_parchment |          128.69
 DLV-20260930-000071 |  125140 |                 124 | 2026-09-30 08:25:30 | cherry        |          123.86
 DLV-20260930-000003 |  228920 |                  80 | 2026-09-30 06:04:40 | wet_parchment |          112.33
 DLV-20260930-000100 |  151444 |                  11 | 2026-09-30 09:49:19 | cherry        |          106.62
 DLV-20260930-000019 |  192605 |                 147 | 2026-09-30 06:42:39 | wet_parchment |          106.26
 DLV-20260930-000280 |  228280 |                   8 | 2026-09-30 16:07:06 | cherry        |           99.14
 DLV-20260930-000297 |   49306 |                  67 | 2026-09-30 16:46:11 | cherry        |           98.35
 DLV-20260930-000147 |   77310 |                 103 | 2026-09-30 11:17:45 | wet_parchment |           66.42
 DLV-20260930-000037 |  220317 |                   2 | 2026-09-30 07:22:30 | wet_parchment |           64.16
**/