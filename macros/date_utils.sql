{% macro get_season(x) %}

 
    CASE WHEN MONTH(TO_TIMESTAMP({{x}})) in (12,1,2)
    THEN 'Winter'
    WHEN MONTH(TO_TIMESTAMP({{x}})) in (3,4,5)
    THEN 'Spring'
    WHEN MONTH(TO_TIMESTAMP({{x}})) in (6,7,8)
    THEN 'Summer'
    ELSE 'Autumn' 
    END 

{% endmacro %}

{% macro date_type(x) %}

CASE
    WHEN DAYNAME(TO_TIMESTAMP({{x}})) IN ('Sat','Sun')
    THEN 'Weekend'
    ELSE 'Business day'
    END 

{% endmacro %}