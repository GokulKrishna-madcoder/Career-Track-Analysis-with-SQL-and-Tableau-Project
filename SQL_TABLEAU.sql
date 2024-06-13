WITH enrollment_data AS (
    SELECT 
        ROW_NUMBER() OVER (ORDER BY e.student_id, e.track_id) AS student_track_id,
        e.student_id,
        t.track_name,
        e.date_enrolled,
        e.date_completed,
        CASE
            WHEN e.date_completed IS NULL THEN 0
            ELSE 1
        END AS track_completed,
        DATEDIFF(e.date_completed, e.date_enrolled) AS days_for_completion
    FROM 
        career_track_student_enrollments e
    JOIN 
        career_track_info t
    ON 
        e.track_id = t.track_id
)
SELECT 
    student_track_id,
    student_id,
    track_name,
    date_enrolled,
    track_completed,
    days_for_completion,
    CASE
        WHEN days_for_completion = 0 THEN 'Same day'
        WHEN days_for_completion BETWEEN 1 AND 7 THEN '1 to 7 days'
        WHEN days_for_completion BETWEEN 8 AND 30 THEN '8 to 30 days'
        WHEN days_for_completion BETWEEN 31 AND 60 THEN '31 to 60 days'
        WHEN days_for_completion BETWEEN 61 AND 90 THEN '61 to 90 days'
        WHEN days_for_completion BETWEEN 91 AND 365 THEN '91 to 365 days'
        ELSE '366+ days'
    END AS completion_bucket
FROM 
    enrollment_data;
    
SELECT 
    student_id,
    DATEDIFF(date_completed, date_enrolled) AS completion_period
FROM 
    career_track_student_enrollments
WHERE 
    date_completed IS NOT NULL
ORDER BY 
    completion_period DESC
LIMIT 1;

SELECT 
    e.student_id,
    e.track_id,
    t.track_name,
    DATEDIFF(e.date_completed, e.date_enrolled) AS completion_period
FROM 
    career_track_student_enrollments e
JOIN 
    career_track_info t
ON 
    e.track_id = t.track_id
WHERE 
    e.date_completed IS NOT NULL
ORDER BY 
    completion_period DESC
LIMIT 1;

SELECT 
    COUNT(*) AS total_track_completions
FROM 
    career_track_student_enrollments
WHERE 
    date_completed IS NOT NULL;
