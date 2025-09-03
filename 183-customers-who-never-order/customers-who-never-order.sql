# Write your MySQL query statement below
select c.name as `Customers` from 
customers c left join 
orders o 
on c.ID = o.customerID
where o.customerID is null 
