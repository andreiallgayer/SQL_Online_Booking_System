-- CHALLENGES

-- 01. WICH FILMS ARE OVER 02 HOURS LONG?

SELECT name, length 
FROM films
WHERE length / 60 >= 2; -- this solution shows the answer in hours, not minutes.

-- 02. WICH FILM HAD THE MOST SCREENINGS IN OCTOBER 2017?

SELECT films.name, COUNT(screening.film_id) AS screening_times 
FROM screening
JOIN films 
ON screening.film_id = films.id
GROUP BY name
ORDER BY screening_times DESC
LIMIT 1;

-- 03. HOW MANY BOOKINGS DID THE FILM "JIGSAW" HAVE IN OCTOBER 2017?

SELECT COUNT(*) AS Jigsaw_Bookings FROM bookings
WHERE screening_id IN(
	SELECT id 
    FROM screening
	WHERE film_id = 
		(SELECT id 
        FROM films
        WHERE name = "Jigsaw")
	);

-- 04. WICH 05 CUSTOMERS MADE THE MOST BOOKINGS IN OCTOBER 2017?

SELECT c.first_name, c.last_name, COUNT(b.id) AS num_bookings FROM Bookings b
JOIN Customers c ON b.customer_id = c.id
GROUP BY first_name, last_name
ORDER BY num_bookings DESC
LIMIT 5;

-- 05. WICH FILM WAS SHOWN IN THE "CHAPLIN" ROOM MOST OFTEN IN OCTOBER 2017?

SELECT f.name, r.name, COUNT(*) AS counter FROM screening s
JOIN films f ON s.film_id = f.id
JOIN rooms r ON s.room_id = r.id
WHERE s.room_id = 1 -- Chaplin room
GROUP BY film_id
ORDER BY counter DESC;

-- 06. HOW MANY OF THE CUSTOMERS MADE A BOOKING IN OCTOBER 2017?

SELECT COUNT(*) FROM (SELECT DISTINCT c.id FROM Bookings b
RIGHT JOIN Customers c ON c.id = b.customer_id
WHERE b.id IS NOT NULL) X;