-- Exercise 02
-- b

SELECT
    table_name,
    column_name,
    data_type
FROM 
    information_schema.columns
WHERE 
    table_schema = 'buy'
    AND table_name IN ('deliveries', 'quality_analyses')
ORDER BY 
    table_name, ordinal_position;

/***
    table_name    |     column_name     |          data_type
------------------+---------------------+-----------------------------
 deliveries       | delivery_id         | character varying
 deliveries       | farm_id             | integer
 deliveries       | collection_point_id | integer
 deliveries       | delivered_at        | timestamp without time zone
 deliveries       | coffee_type         | character varying
 deliveries       | bag_count           | smallint
 deliveries       | gross_weight_kg     | numeric
 deliveries       | status              | character varying
 quality_analyses | analysis_id         | character varying
 quality_analyses | delivery_id         | character varying
 quality_analyses | analyzed_at         | timestamp without time zone
 quality_analyses | moisture_pct        | numeric
 quality_analyses | yield_factor        | numeric
 quality_analyses | defects_pct         | numeric
 quality_analyses | cup_score           | numeric
 quality_analyses | is_accepted         | boolean
 quality_analyses | analyst_name        | character varying
 quality_analyses | observations        | text
**/