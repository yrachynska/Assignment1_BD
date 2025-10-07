USE hotels;

WITH hotels AS(
  SELECT hotel_id, name, city, rating FROM hotels_2022
  UNION
  SELECT hotel_id, name, city, rating FROM hotels_2025
)
SELECT
  g.name AS guest_name, 
  g.phone,
  g.email,
  h.name AS hotel_name,
  r.type,
  r.price,
  h.city
FROM bookings b
JOIN rooms r ON r.room_id = b.room_id
JOIN guests g ON g.guest_id = b.guest_id
JOIN hotels h ON h.hotel_id = r.hotel_id
WHERE r.price < (
    SELECT AVG(r2.price) 
    FROM rooms r2 
    WHERE r2.type = r.type
  )
GROUP BY g.guest_id, g.name, g.phone, g.email, h.name, r.type, r.price, b.date, h.city
HAVING COUNT(*) = 1
ORDER BY b.date
LIMIT 5;
