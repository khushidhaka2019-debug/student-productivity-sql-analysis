-- Student Productivity & Screen-Time Analysis
-- Database: Synthetic dataset created for practice

-- Query 1: Average productivity score by screen-time category
SELECT
    screen_time_category,
    ROUND(AVG(productivity_score), 2) AS avg_productivity
FROM students
GROUP BY screen_time_category;


-- Query 2: Classify students based on productivity score
SELECT
    student_id,
    productivity_score,
    CASE
        WHEN productivity_score >= 75 THEN 'High Productivity'
        WHEN productivity_score BETWEEN 50 AND 74 THEN 'Medium Productivity'
        ELSE 'Low Productivity'
    END AS productivity_level
FROM students;


-- Query 3: Relationship between sleep hours and productivity
SELECT
    sleep_hours,
    ROUND(AVG(productivity_score), 2) AS avg_productivity
FROM students
GROUP BY sleep_hours
ORDER BY sleep_hours;


-- Query 4: Students with high screen time but low productivity
SELECT
    student_id,
    screen_time_hours,
    productivity_score
FROM students
WHERE screen_time_hours > 6
  AND productivity_score < 50;

