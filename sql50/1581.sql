SELECT
    customer_id,
    count(visit_id) as count_no_trans
FROM
    Visits
where
    visit_id not in (
        SELECT
            visit_id
        from
            Transactions
    )
GROUP BY
    customer_id
order by
    count_no_trans Desc