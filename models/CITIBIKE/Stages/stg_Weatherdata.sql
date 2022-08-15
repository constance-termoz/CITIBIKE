With Weatherdata as (
    SELECT OBSERVATION_TIME,
           STATION_ID,
           WEATHER_CONDITIONS,
           TEMP,
           RAIN,
           TSUN,
           WIND_DIR,
           WIND_SPEED,
           DEW_POINT,
           RELATIVE_HUMIDITY,
           PRESSURE
   FROM "CITIBIKE"."PUBLIC"."JSON_WEATHER_DATA_VIEW"
  )

  SELECT * FROM Weatherdata