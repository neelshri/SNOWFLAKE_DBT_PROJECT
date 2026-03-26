{% macro budgeting (budgeting_against) %}
    (
        CASE 
            WHEN {{budgeting_against}} >=200 THEN 'HIGH_EXPENSE'
            WHEN {{budgeting_against}} BETWEEN 101 AND 199 THEN 'MEDIUM_EXPENSE'
            ELSE 'LOW_EXPENSE'
        END
    ) 
 {% endmacro %}

 {% macro response_rate (computing_against) %}
    (
        CASE 
            WHEN {{computing_against}} < 80 THEN 'Bad'
            WHEN {{computing_against}} < 90 THEN 'Fair'
            ELSE 'Good'
        END
    ) 
 {% endmacro %}
