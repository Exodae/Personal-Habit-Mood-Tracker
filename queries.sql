
-- 1. Habit completion count
SELECT h.name, COUNT(e.entry_id) AS completed_count
FROM habits h
JOIN entries e ON h.habit_id = e.habit_id
WHERE e.completed = 1
GROUP BY h.name;

-- 2. Average mood level over time
SELECT AVG(mood_level) AS avg_mood
FROM mood_log;

-- 3. Mood notes for specific dates
SELECT entry_date, mood_level, note
FROM mood_log
WHERE mood_level < 5;

-- 4. Habit streak (simple example)
SELECT habit_id, COUNT(*) AS streak
FROM entries
WHERE completed = 1
GROUP BY habit_id
ORDER BY streak DESC;
