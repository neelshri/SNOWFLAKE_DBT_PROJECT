{% set flag = 2 %}


select * from {{ ref('bronze_bookings') }}
{% if flag == 1 %}
    where booking_status =  'confirmed'
{% else %}
    where booking_status = 'cancelled'
{% endif %}
