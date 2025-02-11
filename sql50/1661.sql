SELECT
    a.machine_id,
    round(AVG(b.timestamp - a.timestamp), 3) as processing_time
FROM
    Activity a
    JOIN Activity b on a.machine_id = b.machine_id
    AND a.process_id = b.process_id
WHERE
    a.activity_type = 'start'
    and b.activity_type = 'end'
GROUP BY
    a.machine_id

-- Table is separated by a self-join