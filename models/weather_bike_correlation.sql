with CTE as  (

    select 
    *
    from {{ ref('trip_fact') }} t
    left join {{ ref('daily_weather') }} m
    on t.trip_date = m.daily_weather

    --order by trip_date desc

)

select * from CTE