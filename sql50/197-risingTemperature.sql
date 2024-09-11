
with
    cte as (
        select
            *,
            DATE_ADD (recordDate, interval -1 day) as yesterday_date,
            lag (recordDate) over (
                order by
                    recordDate
            ) as prev_recordDate,
            lag (temperature) over (
                order by
                    recordDate
            ) as prev_temp
        from
            Weather
    )
select
    id
from
    cte
where
    yesterday_date = prev_recordDate
    and temperature > prev_temp;