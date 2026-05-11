# To view my entire baby_names table

SELECT *
FROM baby_names;

#total names
SELECT COUNT(*) AS total_names
FROM baby_names;

# names of all time in descending order

SELECT "Name", SUM("Count") AS total_count
FROM baby_names
GROUP BY "Name"
ORDER BY total_count DESC;

# Top 10 names of all time

SELECT "Name", SUM("Count") AS total_count
FROM baby_names
GROUP BY "Name"
ORDER BY total_count DESC
LIMIT 10;

# Top 10 least common names of all time
SELECT "Name", SUM("Count") AS total_count
FROM baby_names
GROUP BY "Name"
ORDER BY total_count asc
LIMIT 10;

# number of times james appeared
SELECT "Name", COUNT(*) AS name_count
FROM baby_names
WHERE "Name" = 'James'
GROUP BY "Name";

#total count for a selected name (john)

SELECT "Name", SUM("Count") AS total_count
FROM baby_names
WHERE "Name" = 'John'
GROUP BY "Name";