{{ config(materialized='table')}}

with CTE AS (

select

to_timestamp(STARTED_AT) as startes_at,
date(to_timestamp(STARTED_AT)) as date_started_at,
hour(to_timestamp(STARTED_AT)) as hour_started_at,
dayofweek(to_timestamp(STARTED_AT)) as day_started_at,
dayname(to_timestamp(STARTED_AT)) as day_name_started_at,

{{ get_day('STARTED_AT')}} as day_name_startes_at

from {{ source('demo', 'bike') }}
-- remove the first line is exist with the filter
--where STARTED_AT != 'startes_at'
)

select 
* from CTE