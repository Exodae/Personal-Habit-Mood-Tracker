
-- Habits table
CREATE TABLE habits (
    habit_id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    category TEXT,
    goal_frequency INTEGER -- times per week
);

-- Daily entries table
CREATE TABLE entries (
    entry_id INTEGER PRIMARY KEY,
    habit_id INTEGER,
    entry_date DATE,
    completed BOOLEAN,
    FOREIGN KEY (habit_id) REFERENCES habits(habit_id)
);

-- Mood log table
CREATE TABLE mood_log (
    mood_id INTEGER PRIMARY KEY,
    entry_date DATE,
    mood_level INTEGER, -- 1-10 scale
    note TEXT
);
