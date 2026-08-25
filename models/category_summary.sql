select
    i.category,
    count(distinct o.order_id) as order_count,
    sum(i.quantity) as product_quantity,
    sum(i.line_amount) as sales_amount,
    sum(i.gross_profit) as gross_profit
from {{ ref('stat_orders') }} o
inner join {{ ref('stat_order_items') }} i
    on o.order_id = i.order_id
where o.order_status in ('已完成')
group by i.category