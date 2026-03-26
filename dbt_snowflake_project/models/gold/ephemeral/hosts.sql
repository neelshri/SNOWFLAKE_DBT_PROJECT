{{
    config(
        materialization = 'ephemeral'
    )
}}

WITH hosts AS (
    SELECT 
        HOST_ID,
        HOST_NAME,
        HOST_SINCE,
        IS_SUPERHOST,
        RESPONSIVENESS,
        HOST_CREATED_AT

    FROM {{ref("obt")}}
) SELECT * FROM hosts