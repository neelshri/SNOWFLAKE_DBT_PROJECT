{{
    config(
        materialization = 'ephemeral'
    )
}}

WITH listings AS (
    SELECT LISTING_ID,
           PROPERTY_TYPE,
           CITY,
           COUNTRY,
           BUDGET_TYPE,
           LISTINGS_CREATED_AT

    FROM {{ref("obt")}}
) SELECT * FROM listings