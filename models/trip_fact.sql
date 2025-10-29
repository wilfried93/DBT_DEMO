
with TRIPS as (


   
    select 
    ride_id,
    --rideable_type,
    date(to_timestamp(replace(STARTED_AT,'"',''))) as trip_date,
    start_statio_id,
    end_station_id,
    member_csual as memeber_casual,
    timestampdiff(second,to_timestamp(replace(STARTED_AT,'"','')),to_timestamp(replace(ENDED_AT,'"',''))) AS TRIP_DURATION_SECONDS
    
    from {{ ref('stg_bike') }}

    where RIDE_ID != 'bikeid'
)

select*
from  TRIPS 