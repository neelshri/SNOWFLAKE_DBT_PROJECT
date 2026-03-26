{{
    config(
        materialization='incremental',
        unique_key='HOST_ID'
    
    )
}}

SELECT 
    HOST_ID,
    HOST_NAME,
    HOST_SINCE,
    IS_SUPERHOST,
    RESPONSE_RATE,
    {{
        response_rate('RESPONSE_RATE')
    }} AS RESPONSIVENESS,
    CREATED_AT AS HOST_CREATED_AT
FROM
    {{ ref("bronze_hosts") }}