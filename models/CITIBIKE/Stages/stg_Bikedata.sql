With Bikedata as (
    SELECT TRIPDURATION,
           STARTTIME,
           STOPTIME,
           START_STATION_NAME,
           START_STATION_LATITUDE,
           START_STATION_LONGITUDE,
           END_STATION_NAME,
           END_STATION_LATITUDE,
           END_STATION_LONGITUDE,
           BIKEID,
           MEMBERSHIP_TYPE,
           USERTYPE,
           BIRTH_YEAR,
           GENDER
  FROM "CITIBIKE"."PUBLIC"."TRIPS")

  SELECT* FROM Bikedata