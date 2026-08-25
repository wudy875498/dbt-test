select
    order_id,
    order_time,
    user_id,
    channel,
    province,
    city,
    item_count,
    original_amount,
    discount_amount,
    shipping_fee,
    paid_amount,
    payment_method,
    order_status,
    refund_amount,
    coupon_code,
    delivery_hours
from {{ source('pinba', 'orders') }}
where order_id is not null