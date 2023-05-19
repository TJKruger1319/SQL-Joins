SELECT * FROM owners
FULL JOIN vehicles
ON owners.id = vehicles.owner_id;

----

SELECT first_name, last_name, COUNT(vehicles.make)
FROM owners
JOIN vehicles ON owners.id = vehicles.owner_id
GROUP BY first_name, last_name
ORDER BY first_name, last_name;

----

SELECT first_name, last_name, CAST(AVG(vehicles.price) as int), COUNT(vehicles.make)
FROM owners
JOIN vehicles ON owners.id = vehicles.owner_id
GROUP BY first_name, last_name
HAVING COUNT(vehicles.make) > 1 AND AVG(vehicles.price) > 10000
ORDER BY first_name DESC;
