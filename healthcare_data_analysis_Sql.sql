create database healthcare;
use healthcare;
select * from clean_healthcare;
-- Who are the top 20% high-risk patients?
select * from(
       select *,ntile(5) over 
       (order by disease_risk desc) 
      as risk_segment
	 from clean_healthcare)
     t
where risk_segment=1;

-- How does disease risk differ between smokers and non-smokers?
SELECT 
    smoker,
    COUNT(*) AS patient_count,
    ROUND(AVG(disease_risk), 2) AS avg_dis_risk
FROM
    clean_healthcare
GROUP BY smoker;

-- Which age group has the highest average disease risk?
SELECT 
    CASE
        WHEN age < 30 THEN 'under 30'
        WHEN age BETWEEN 30 AND 45 THEN '30–45'
        WHEN age BETWEEN 46 AND 60 THEN '46–60'
        ELSE '60+'
    END AS age_group,
    ROUND(AVG(disease_risk), 2) AS avg_dis_risk
FROM
    clean_healthcare
GROUP BY age_group
ORDER BY avg_dis_risk DESC;

-- Do patients who exercise more have lower disease risk?
SELECT 
    CASE
        WHEN exercise_mins_week < 60 THEN 'Low activity'
        WHEN exercise_mins_week BETWEEN 60 AND 150 THEN 'Moderate activity'
        ELSE 'High activity'
    END AS activity_lavel,
    ROUND(AVG(disease_risk), 2) AS avg_dis_risk
FROM
    clean_healthcare
GROUP BY activity_lavel
ORDER BY avg_dis_risk DESC;

-- Is disease risk significantly different by gender?
SELECT 
    gender,
    COUNT(*) AS patient_count,
    ROUND(AVG(disease_risk), 2) AS avg_risk
FROM
    healthcare
GROUP BY gender;

-- Among smokers, does higher exercise reduce disease risk?
SELECT smoker,
    CASE
        WHEN exercise_mins_week < 60 THEN 'Low activity'
        WHEN exercise_mins_week BETWEEN 60 AND 150 THEN 'Moderate activity'
        ELSE 'High activity'
    END AS activity_lavel,
    ROUND(AVG(disease_risk), 2) AS avg_dis_risk
FROM
    clean_healthcare
GROUP BY smoker,activity_lavel
ORDER BY smoker,avg_dis_risk DESC;

-- How can patients be ranked by disease risk?
SELECT patient_id, age, disease_risk,
       RANK() OVER (ORDER BY disease_risk DESC) AS risk_rank
FROM clean_healthcare;

