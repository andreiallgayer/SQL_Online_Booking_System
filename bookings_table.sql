USE online_booking_database;

CREATE TABLE bookings(
id INT PRIMARY KEY AUTO_INCREMENT,
screening_id INT NOT NULL, FOREIGN KEY (screening_id) REFERENCES secreening(id),
customer_id INT NOT NULL, FOREIGN KEY (customer_id) REFERENCES customers(id)
);

DESCRIBE bookings;