# Hotel Management Database

A SQL database system for managing hotels, rooms, guests, and bookings.

## Database Structure

### Tables:
- **guests** - guest information (guest_id, name, phone, email)
- **hotels_2022** - hotels that worked before 01.01.2022 (hotel_id, name, city, rating)
- **hotels_2025** - hotels that worked before 01.01.2025 (hotel_id, name, city, rating) 
- **rooms** - room information (room_id, hotel_id, type, price)
- **bookings** - reservation records (book_id, room_id, guest_id, date)

### Query:

Guests with only 1 booking,
Rooms cheaper than the average price of their type,
First 5 such bookings by date

"One-time budget room bookings rating by date"
