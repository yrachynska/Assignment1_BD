CREATE DATABASE hotels;
USE hotels;

DROP TABLE guests;
CREATE TABLE guests(
  guest_id INT PRIMARY KEY AUTO_INCREMENT, 
  name VARCHAR(50), 
  phone VARCHAR(50), 
  email VARCHAR(50)
);

DROP table hotels_2022;
CREATE TABLE hotels_2022(
  hotel_id INT PRIMARY KEY UNIQUE, 
  name VARCHAR(50), 
  city VARCHAR(50), 
  rating INT CHECK (rating >= 1 AND rating <= 5)
);

CREATE TABLE hotels_2025(
  hotel_id INT PRIMARY KEY, 
  name VARCHAR(50), 
  city VARCHAR(50), 
  rating INT CHECK (rating >= 1 AND rating <= 5)
);

DROP TABLE rooms;
CREATE TABLE rooms(
  room_id INT PRIMARY KEY, 
  hotel_id INT, 
  type VARCHAR(50) CHECK (type IN ('standart', 'econom', 'luxe', 'family')), 
  price DECIMAL(8,2)
);

CREATE TABLE bookings(
  book_id INT PRIMARY KEY AUTO_INCREMENT,
  room_id INT, 
  guest_id INT,
  date DATE
);
