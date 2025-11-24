-- q1

select gender, sum(purchase_amount) as revenue
from customer
group by gender

--q2

select customer_id, purchase_amount
from customer
where discount_applied = 'Yes' and purchase_amount >= (select AVG(purchase_amount) from customer)

-- q3

select item_purchased, ROUND(AVG(review_rating::numeric),2) as "Average Product Rating"
from customer
group by item_purchased
order by AVG(review_rating) desc
limit 5;

-- q4

select shipping_type,
ROUND(AVG(purchase_amount),2)
from customer
where shipping_type in ('Standard', 'Express')
group by shipping_type

--q5

select subscription_status,
COUNT(customer_id) as total_costumers,
ROUND(AVG(purchase_amount),2) as avg_spend,
ROUND(SUM(purchase_amount),2) as total_revenue
from customer
group by subscription_status
order by total_revenue, avg_spend desc;

--q6

select item_purchased,
ROUND(100 * SUM(CASE WHEN discount_applied = 'Yes' THEN 1 ELSE 0 END)/COUNT(),2) as discount_rate
from customer
group by item_purchased
order by discount_rate desc
limit 5;

--q7

with customer_type as (
select customer_id, previous_purchases,
CASE
    WHEN previous_purchases = 1 THEN 'New'
    WHEN previous_purchases BETWEEN 2 AND 10 THEN 'Returning'
    ELSE 'Loyal'
    END AS customer_segment
from customer 
)

select customer_segment, count (*) as "Numbers of Customers"
from customer_type
group by customer_segment

--q8

with item_count as (
select category, 
item_purchased,
COUNT(customer_id) as total_orders,
ROW_NUMBER() over(partition by category order by count(customer_id) DESC) as item_rank
from customer
group by category, item_purchased
)

select item_rank, category, item_purchased, total_orders
from item_count
where item_rank <= 3;
--q9

select subscription_status,
count(customer_id) as repeat_buyers
from customer
where previous_purchases > 5
group by subscription_status

--q10

select age_group,
SUM(purchase_amount) as total_revenue
from customer
group by age_group
order by total_revenue DESC;

