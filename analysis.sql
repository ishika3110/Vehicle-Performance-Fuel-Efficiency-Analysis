--first 10 records from the dataset
SELECT TOP 10 * FROM [dbo].[auto-mpg];

--Average MPG for each car model, sorted by highest MPG
SELECT car_name, ROUND(AVG(mpg), 2) AS avg_mpg
FROM [dbo].[auto-mpg]
GROUP BY car_name
ORDER BY avg_mpg DESC;

--Average horsepower for each cylinder count
SELECT cylinders, ROUND(AVG(horsepower), 2) AS avg_hp
FROM [dbo].[auto-mpg]
GROUP BY cylinders
ORDER BY cylinders;

--Average weight of cars grouped by origin
SELECT origin, ROUND(AVG(weight), 2) AS avg_weight
FROM [dbo].[auto-mpg]
GROUP BY origin;

--Average MPG per model year, sorted by year
SELECT [model_year], ROUND(AVG(mpg), 2) AS avg_mpg
FROM [dbo].[auto-mpg]
GROUP BY [model_year]
ORDER BY [model_year];

--Cars that have MPG > 30 and weigh less than 2000 lbs
SELECT car_name, mpg, weight
FROM [dbo].[auto-mpg]
WHERE mpg > 30 AND weight < 2000
ORDER BY mpg DESC;

--8-cylinder cars with horsepower greater than 200
SELECT car_name, horsepower, mpg
FROM [dbo].[auto-mpg]
WHERE cylinders = 8 AND horsepower > 200;

--Cars with average MPG over 30
SELECT car_name, ROUND(AVG(mpg), 2) AS avg_mpg
FROM [dbo].[auto-mpg]
GROUP BY car_name
HAVING AVG(mpg) > 30
ORDER BY avg_mpg DESC;

--Maximum horsepower for each car model
SELECT car_name, MAX(horsepower) AS max_hp
FROM [dbo].[auto-mpg]
GROUP BY car_name;

--Count the number of cars grouped by cylinder count and origin
SELECT cylinders, origin, COUNT(*) AS count
FROM [dbo].[auto-mpg]
GROUP BY cylinders, origin
ORDER BY cylinders, origin;
