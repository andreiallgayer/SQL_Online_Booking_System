USE online_booking_database;

CREATE TABLE screening(
id INT PRIMARY KEY AUTO_INCREMENT,
film_id INT NOT NULL, FOREIGN KEY (film_id) REFERENCES films(id),
room_id INT NOT NULL, FOREIGN KEY (room_id) REFERENCES rooms(id),
start_time DATETIME NOT NULL
);

DESCRIBE screening;