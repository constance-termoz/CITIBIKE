{{ config(materialized='table') }} -- to make it as a (transient) table and not in the view section

with Bikedata as (
    SELECT * FROM {{ref('stg_Bikedata')}} --reference function
),

Weatherdata as (
    SELECT * FROM {{ref('stg_Weatherdata')}}
),

MainDT as (
    SELECT * from Bikedata
        left outer join Weatherdata
        on date_trunc('hour', observation_time) = date_trunc('hour', starttime)
        WHERE TRIPDURATION > 90 AND TRIPDURATION < 18000 AND WEATHER_CONDITIONS is not null
  )
  
  SELECT * FROM MainDT