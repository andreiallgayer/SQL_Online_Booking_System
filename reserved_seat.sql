USE online_booking_database;

CREATE TABLE reserved_seat(
id INT PRIMARY KEY AUTO_INCREMENT,
booking_id INT NOT NULL, FOREIGN KEY (booking_id) REFERENCES bookings(id),
seat_id INT NOT NULL, FOREIGN KEY (seat_id) REFERENCES seats(id)
);

DESCRIBE reserved_seat;