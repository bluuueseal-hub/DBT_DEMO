WITH CTE AS (
    Select 
    TO_TIMESTAMP(STARTED_AT) STARTED_AT,

    DATE(TO_TIMESTAMP(STARTED_AT)) AS DATE_STARTED_AT,

    HOUR(TO_TIMESTAMP(STARTED_AT)) AS HOUR_STARTED_AT,

    DAYNAME(TO_TIMESTAMP(STARTED_AT)) AS DAY_NAME,

    {{ date_type('STARTED_AT')}} AS DAY_TYPE,

    MONTH(TO_TIMESTAMP(STARTED_AT)) AS MONTH,

    {{ get_season('STARTED_AT')}} AS STATION_OF_YEAR
    
    from 
    {{ source('demo', 'bike') }}
    Where STARTED_AT !='started_at'
)
Select * from CTE