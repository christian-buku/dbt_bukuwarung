{% macro get_date_parts(date_column) %}
    (
        select 
            struct(
                {{ date_column }} AS original_date,
                EXTRACT(YEAR FROM CAST( {{date_column}} AS DATE )) AS year,
                EXTRACT(MONTH FROM CAST( {{date_column}} AS DATE )) AS month,
                EXTRACT(DAY FROM CAST( {{date_column}} AS DATE )) AS day,
                EXTRACT(DAYOFWEEK FROM CAST( {{date_column}} AS DATE )) AS day_of_week,
                EXTRACT(DAYOFYEAR FROM CAST( {{date_column}} AS DATE )) AS day_of_year,
                EXTRACT(WEEK FROM CAST( {{date_column}} AS DATE )) AS week,
                EXTRACT(QUARTER FROM CAST( {{date_column}} AS DATE )) AS quarter
            ) as extract_date
    )
{% endmacro %}