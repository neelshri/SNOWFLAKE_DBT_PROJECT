{% set cols = ['LISTING_ID','BOOKING_DATE','BOOKING_AMOUNT'] %}

SELECT 
{% for col in cols%}
    {{col}}
        {% if not loop.last %} 
            ,
        {% endif %}
{% endfor %}

from {{ ref('bronze_bookings') }}



