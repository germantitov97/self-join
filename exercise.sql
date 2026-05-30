-- question 1

select f.flight_no as 'flight', p.flight_no as 'predecessor flight'
from flights f
left join flights p on p.id = f.prev_flight_id;

-- question 2

select f.flight_no as 'flight', p.flight_no as 'predecessor flight'
from flights f
left join flights p on p.id = f.prev_flight_id
where p.flight_no = 'TK101';

-- question 3

SELECT
    f.flight_no,COUNT(p.id) AS 'predecessors'
FROM flights f
LEFT JOIN flights p ON p.prev_flight_id = f.id
GROUP BY f.id, f.flight_no
ORDER BY predecessors DESC;

-- question 4

SELECT
    f.flight_no         AS current_flight,
    f.origin            AS current_origin,
    p.flight_no         AS predecessor_flight,
    p.destination       AS predecessor_destination
FROM flights f
JOIN flights p ON p.id = f.prev_flight_id
WHERE p.destination != f.origin;
