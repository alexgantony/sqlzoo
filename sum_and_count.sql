-- SUM and COUNT

/*
#1 - Total world population

Show the total population of the world.
*/
SELECT
    SUM(population) AS total_population
FROM
    world;


/*
#2 - List of continents

List all the continents - just once each.
*/
SELECT
    continent
FROM
    world
GROUP BY
    continent;


/*
#3 - GDP of Africa

Give the total GDP of Africa
*/
SELECT
    sum(gdp) AS gdp_africa
FROM
    world
WHERE
    continent = 'Africa';


/*
#4 - Count the big countries

How many countries have an area of at least 1000000
*/
SELECT
    count(area) AS big_countries
FROM
    world
WHERE
    area >= 1000000;


/*
#5 - Baltic states population

What is the total population of ('Estonia', 'Latvia', 'Lithuania')
*/
SELECT
    sum(population) AS baltic_states
FROM
    world
WHERE
    name IN ('Estonia', 'Latvia', 'Lithuania');


/*
#6 - Counting the countries of each continent

For each continent show the continent and number of countries.
*/
SELECT
    continent,
    count(name) AS no_of_countries
FROM
    world
GROUP BY
    continent;


/*
#7 - Counting big countries in each continent

For each continent show the continent and number of countries with populations of at least 10 million.
*/
SELECT
    continent,
    count(name) AS big_countries
FROM
    world
WHERE
    population >= 10000000
GROUP BY
    continent;


/*
#8 - Counting big continents

List the continents that have a total population of at least 100 million.
*/
SELECT
    continent
FROM
    world
GROUP BY
    continent
HAVING
    sum(population) >= 100000000;
