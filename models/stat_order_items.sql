select
    item_id,
    order_id,
    product_id,
    product_name,
    category,
    unit_price,
    quantity,
    line_amount,
    cost_amount,
    gross_profit
from {{ source('pinba', 'order_items') }}
where item_id is not null