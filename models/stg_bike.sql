WITH BIKE AS (

select
	RIDE_ID ,
			STARTED_AT ,
			ENDED_AT ,
			START_STATION_NAME ,
			START_STATIO_ID ,
			END_STATION_NAME ,
			END_STATION_ID ,
			START_LAT ,
			START_LNG ,
			END_LAT ,
			END_LNG ,
			MEMBER_CSUAL 



FROM {{ source('demo', 'bike') }}
WHERE RIDE_ID != 'bikeid'
)
select *
from BIKE