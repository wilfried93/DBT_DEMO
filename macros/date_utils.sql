{% macro get_day(x)%}
        case
             when dayname(to_timestamp({{x}})) in ('Sat','Sun')
            then 'WEEKEND'
            else 'BUSINESSDAY'
        end
{% endmacro %}