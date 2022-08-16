{{ config(materialized='table') }} -- to make it as a (transient) table and not in the view section

with Bikedata as (
    SELECT * FROM {{ref('stg_Bikedata')}} --reference function
),

Weatherdata as (
    SELECT * FROM {{ref('stg_Weatherdata2')}}
),

MainDT as (
    SELECT * from Bikedata
        left outer join Weatherdata
        on date_trunc('hour', observation_time) = date_trunc('hour', starttime)
        WHERE TRIPDURATION > 300  AND TRIPDURATION < 7200 AND WEATHER_CONDITIONS is not null --trip duration between 5min & 2h
  )
  
  SELECT * FROM MainDT