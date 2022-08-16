With Weatherdata as (
    SELECT OBSERVATION_TIME,
           WEATHER_CONDITIONS,
           TEMP,
           RAIN
   FROM "CITIBIKE"."PUBLIC"."JSON_WEATHER_DATA_VIEW"
  )

  SELECT * FROM Weatherdata