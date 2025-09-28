# Write your MySQL query statement below
SELECT 
    u.name,                                 -- user ka name
    COALESCE(SUM(r.distance), 0) AS travelled_distance  -- total distance, 0 agar rides nahi
FROM Users u
LEFT JOIN Rides r
    ON u.id = r.user_id                     -- join by user_id
GROUP BY u.id, u.name                       -- group by user
ORDER BY travelled_distance DESC, u.name ASC;