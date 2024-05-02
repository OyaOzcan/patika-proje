-- 1. film tablosunda bulunan replacement_cost sütununda bulunan birbirinden farklı değerleri sıralama:
SELECT DISTINCT replacement_cost
FROM film;

-- 2. film tablosunda bulunan replacement_cost sütununda birbirinden farklı kaç tane veri vardır?
SELECT COUNT(DISTINCT replacement_cost) AS unique_values_count
FROM film;

-- 3. film tablosunda bulunan film isimlerinde (title) kaç tanesini T karakteri ile başlar ve aynı zamanda rating 'G' ye eşittir?
SELECT COUNT(*) AS movie_count
FROM film
WHERE title LIKE 'T%' AND rating = 'G';

-- 4. country tablosunda bulunan ülke isimlerinden (country) kaç tanesi 5 karakterden oluşmaktadır?
SELECT COUNT(*) AS country_count
FROM country
WHERE LENGTH(country) = 5;

-- 5. city tablosundaki şehir isimlerinin kaç tanesi 'R' veya r karakteri ile biter?
SELECT COUNT(*) AS city_count
FROM city
WHERE city LIKE '%r' OR city LIKE '%R';
