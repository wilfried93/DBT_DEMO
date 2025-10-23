
{{ config(materialized='table')}}
with TRIPS as (


   
    select 
    ride_id,
    rideable_type,
    date(to_timestamp(STARTED_AT)) as trip_date,
    start_statio_id,
    end_station_id,
    member_csual as memeber_casual,
    timestampdiff(second,to_timestamp(STARTED_AT),to_timestamp(ENDED_AT)) AS TRIP_DURATION_SECONDS
    
    from {{ source('demo', 'bike') }}
)

select*
from  TRIPS 