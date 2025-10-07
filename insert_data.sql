USE hotels;

INSERT INTO guests(name, phone, email) VALUES
('Tom Hylton', '067 045 21 78', 'tomyh@gmail.com'),
('Mary Moon', '050 256 49 91', 'mmary@gmail.com'),
('Pole Ghans', '085 314 12 13', 'ghans24@gmail.com'),
('Asti Ambrong', '068 097 30 49', 'asti_asti@gmail.com'),
('Simon Bet', '056 468 46 48', 'simon.bet@gmail.com'),
('John Smith', '063 123 45 67', 'john.smith@gmail.com'),
('Emma Watson', '097 765 43 21', 'emma.watson@gmail.com'),
('Michael Brown', '044 555 66 77', 'm.brown@gmail.com'),
('Sarah Johnson', '067 888 99 00', 'sarah.j@gmail.com');

INSERT INTO hotels_2022(hotel_id, name, city, rating) VALUES
(2500, 'Premier', 'Nova Kahovka', 5),
(2743, 'Porto', 'Zheleznyy port', 3),
(2702, 'Bro', 'Zheleznyy port', 4),
(2341, 'ZABARINO', 'Zabarine', 5),
(2854, 'Gostevia', 'Vinnytsia', 4);

INSERT INTO hotels_2025(hotel_id, name, city, rating) VALUES
(3021, 'Malina', 'Kyiv', 4),
(2854, 'Gostevia', 'Vinnytsia', 4);

INSERT INTO rooms(room_id, hotel_id, type, price) VALUES
(25001, 2500, 'standart', 328.5),
(25002, 2500, 'econom', 250.43),
(25003, 2500, 'luxe', 421.2),
(25004, 2500, 'family', 400.3),

(27431, 2743, 'standart', 312.6),
(27432, 2743, 'econom', 220.91),
(27433, 2743, 'luxe', 383.74),
(27434, 2743, 'family', 354.7),

(27021, 2702, 'standart', 320.6),
(27022, 2702, 'econom', 230),
(27023, 2702, 'luxe', 401.86),
(27024, 2702, 'family', 380.5),

(23411, 2341, 'standart', 306.8),
(23412, 2341, 'econom', 205),
(23413, 2341, 'luxe', 378.3),
(23414, 2341, 'family', 350.4),

(28541, 2854, 'standart', 290),
(28542, 2854, 'econom', 189.68),
(28543, 2854, 'luxe', 354.32),
(28544, 2854, 'family', 350.4),

(30211, 3021, 'standart', 345.2),
(30212, 3021, 'econom', 310.23),
(30213, 3021, 'luxe', 437.8);

INSERT INTO bookings(room_id, guest_id, date) VALUES
(28541, 1, '2024-03-12'),
(30211, 5, '2022-07-05'),
(23413, 3, '2021-09-27'),
(27024, 8, '2020-06-04'),
(27434, 1, '2021-05-30'),
(25004, 9, '2019-07-21'),
(28542, 2, '2022-11-03'),
(30212, 7, '2023-12-31'),
(23413, 4, '2021-10-11'),
(28543, 6, '2023-04-24');