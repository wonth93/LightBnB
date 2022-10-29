DELETE FROM users;
DELETE FROM reservations;
DELETE FROM properties;
DELETE FROM property_reviews;


INSERT INTO users (name, email, password)
VALUES ('Martin', 'martin.wong@abc.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('Tom', 'tom.w@abc.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('Kay', 'K.T@abc.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.');

INSERT INTO properties (owner_id, title, description, thumbnail_photo_url, cover_photo_url, cost_per_night, parking_spaces, number_of_bathrooms, number_of_bedrooms, country, street, city, province, post_code, active)
VALUES (1, 'house', 'message', 'www.abc.com/a', 'www.abc.com/b', 50, 2, 2, 3, 'Canada', '123th Ave E.', 'Toroto', 'ON', 'A2F5P7', false),
(1, 'basement', 'message', 'www.abc.com/c', 'www.abc.com/d', 52, 1, 2, 2, 'Canada', '18th Ave E.', 'Vancouver', 'BC', 'A7F0P2', true),
(2, 'appartment', 'message', 'www.abc.com/e', 'www.abc.com/d', 100, 7, 8, 9, 'Canada', '18th Ave W.', 'Richmond', 'AB', 'A4F9P1', false);

INSERT INTO reservations (start_date, end_date, property_id, guest_id)
VALUES ('2018-09-11', '2018-09-26', 2, 3),
('2019-01-04', '2019-02-01', 2, 2),
('2021-10-01', '2021-10-14', 1, 3);

INSERT INTO property_reviews (guest_id, property_id, reservation_id, rating, message)
VALUES (3, 2, 1, 10, 'message'),
(2, 2, 2, 9, 'message'),
(3, 1, 3, 2, 'message');