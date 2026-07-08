-- Databricks notebook source
SELECT *
FROM bright_tv.bright_tv_schema.bright_tv_dataset
LIMIT 100;
--------------------------------------------------
--Data Processing
SELECT DISTINCT gender
FROM bright_tv.bright_tv_schema.bright_tv_dataset;
--------------------------------------------------
---Gender checks----
SELECT DISTINCT
CASE
WHEN gender = 'None' then 'unknown'
WHEN gender = ' ' then 'unknown'
WHEN gender is null then 'unknown'
ELSE gender
END AS sex
FROM bright_tv.bright_tv_schema.bright_tv_dataset;
--------------------------------------------------
---Race checks----
SELECT DISTINCT
CASE
WHEN race = 'other' then 'unknown'
WHEN race = 'None' then 'unknown'
When race= ' ' then 'unknown'
WHEN race is null then 'unknown'
ELSE race 
END AS ethnicity 
FROM bright_tv.bright_tv_schema.bright_tv_dataset
--------------------------------------------------
---Province checks---
SELECT DISTINCT 
CASE
WHEN province = 'None' then 'unknown'
WHEN province = ' ' then 'unknown'
WHEN province IS NULL THEN 'unknown'
else province
end as Region
FROM bright_tv.bright_tv_schema.bright_tv_dataset
--------------------------------------------------
---Age checks---
SELECT MIN(Age) as min_age,
MAX(Age) as max_age
FROM bright_tv.bright_tv_schema.bright_tv_dataset

SELECT DISTINCT
CASE 
When age = 0 then 'infant'
when  age between 1 and 12 then 'kids'
when age between 13 and 17 then 'youth'
when age between 18 and 35 then 'young aldult'
when age between 36 and 50 then 'adults'
when age > 50 and age < 60 then 'elder'
when age > 60 then 'pensioner'
end as age_group
from bright_tv.bright_tv_schema.user_profile
