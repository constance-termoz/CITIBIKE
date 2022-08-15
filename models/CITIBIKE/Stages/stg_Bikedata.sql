With Bikedata as (
    SELECT TRIPDURATION,
           STARTTIME,
           STOPTIME,
           START_STATION_NAME,
           END_STATION_NAME,
           BIKEID,
           MEMBERSHIP_TYPE,
           USERTYPE,
           BIRTH_YEAR,
           GENDER
  FROM "CITIBIKE"."PUBLIC"."TRIPS")

  SELECT* FROM Bikedata