{% test is_bangalore(model, column_name) %}

with validation as (

    select
        {{ column_name }} as location

    from {{ model }}

),

validation_errors as (

    select
        location

    from validation
    -- if this is true, then location is actually odd!
    where location = Bangalore

)

select *
from validation_errors

{% endtest %}