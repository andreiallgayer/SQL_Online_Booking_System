USE online_booking_database;

CREATE TABLE rooms(
id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(45) NOT NULL,
no_seats INT NOT NULL
);

DESCRIBE rooms;