with Source_Zeel as (
select * from {{ source('SNOWFLAKE', 'TWEETS') }}
),

final as 
(select * from Source_Zeel)

select * from final