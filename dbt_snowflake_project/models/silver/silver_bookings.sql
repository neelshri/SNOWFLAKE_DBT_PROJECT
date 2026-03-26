{{
      config(
        materialized = 'incremental',
        unique_key = 'BOOKING_ID'
        )
}}

SELECT 
    BOOKING_ID,
    LISTING_ID,
    SERVICE_FEE,
    CLEANING_FEE,
    BOOKING_DATE,
    NIGHTS_BOOKED,
    (({{multiply('NIGHTS_BOOKED','BOOKING_AMOUNT',2)}})+CLEANING_FEE+SERVICE_FEE) AS TOTAL_AMOUNT,
    BOOKING_STATUS,
    CREATED_AT
FROM 
    {{ref('bronze_bookings')}}
ORDER BY LISTING_ID


