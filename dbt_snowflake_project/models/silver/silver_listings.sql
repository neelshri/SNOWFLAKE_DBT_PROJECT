{{
      config(
        materialized = 'incremental',
        unique_key = 'LISTING_ID'
        )
}}

SELECT 
    LISTING_ID,
    CREATED_AT,
    HOST_ID,
    PROPERTY_TYPE,
    ROOM_TYPE,
    CITY,
    COUNTRY,
    BEDROOMS,
    BATHROOMS,
    ACCOMMODATES,
    PRICE_PER_NIGHT,
    {{budgeting('PRICE_PER_NIGHT')}} AS BUDGET_TYPE,
    CREATED_AT AS LISTINGS_CREATED_AT

FROM 
    {{ref('bronze_listings')}}


