USE online_booking_database;

CREATE TABLE films(
id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(45) NOT NULL UNIQUE,
lenght_min INT NOT NULL
);

DESCRIBE films;