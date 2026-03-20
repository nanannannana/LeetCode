-- SELECT id
-- FROM (
--     SELECT id, temperature, LAG(temperature) OVER (ORDER BY recordDate) as prev_t
--     FROM Weather
-- ) s
-- WHERE temperature > prev_t;

SELECT w1.id
FROM Weather w1
JOIN Weather w2 ON w2.recordDate = w1.recordDate - INTERVAL 1 DAY
WHERE w1.temperature > w2.temperature;