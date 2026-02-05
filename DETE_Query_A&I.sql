CREATE DATABASE Survey
USE Survey

SELECT COUNT(DISTINCT ID)
FROM dbo.DETE


--Check how many Departments are there [9 dept]
SELECT 
SeparationType,
COUNT(SeparationType) No_of_ppl
FROM DETE
GROUP BY SeparationType
ORDER BY 2 DESC  -- Most of the emoployees are leaving due to Age Retirement


--
SELECT
Position,
COUNT(Position) No_of_ppl
FROM DETE
GROUP BY Position
ORDER BY 2 DESC 


SELECT *
FROM DETE
WHERE ISNUMERIC(Role_Start_Date) = 1
  AND CAST(Role_Start_Date AS INT) NOT BETWEEN 1000 AND 3000


SELECT
  COUNT(*) AS total_rows,
  COUNT(CASE WHEN ID IS NULL OR ID = '' THEN 1 END) AS ID_blank,
  COUNT(CASE WHEN SeparationType IS NULL OR SeparationType = '' THEN 1 END) AS SeparationType_blank,
  COUNT(CASE WHEN Cease_Date IS NULL OR Cease_Date = '' THEN 1 END) AS Cease_Date_blank,
  COUNT(CASE WHEN DETE_Start_Date IS NULL OR DETE_Start_Date = '' THEN 1 END) AS DETE_Start_Date_blank,
  COUNT(CASE WHEN Role_Start_Date IS NULL OR Role_Start_Date = '' THEN 1 END) AS Role_Start_Date_blank,
  COUNT(CASE WHEN Position IS NULL OR Position = '' THEN 1 END) AS Position_blank,
  COUNT(CASE WHEN Classification IS NULL OR Classification = '' THEN 1 END) AS Classification_blank,
  COUNT(CASE WHEN Region IS NULL OR Region = '' THEN 1 END) AS Region_blank,
  COUNT(CASE WHEN Business_Unit IS NULL OR Business_Unit = '' THEN 1 END) AS Business_Unit_blank,
  COUNT(CASE WHEN Employment_Status IS NULL OR Employment_Status = '' THEN 1 END) AS Employment_Status_blank,
  COUNT(CASE WHEN Career_move_to_public_sector IS NULL OR Career_move_to_public_sector = '' THEN 1 END) AS Public_Sector_blank,
  COUNT(CASE WHEN Career_move_to_private_sector IS NULL OR Career_move_to_private_sector = '' THEN 1 END) AS Private_Sector_blank,
  COUNT(CASE WHEN Interpersonal_conflicts IS NULL OR Interpersonal_conflicts = '' THEN 1 END) AS Interpersonal_conflicts_blank,
  COUNT(CASE WHEN Job_dissatisfaction IS NULL OR Job_dissatisfaction = '' THEN 1 END) AS Job_dissatisfaction_blank,
  COUNT(CASE WHEN Dissatisfaction_with_the_department IS NULL OR Dissatisfaction_with_the_department = '' THEN 1 END) AS Department_Dissatisfaction_blank,
  COUNT(CASE WHEN Physical_work_environment IS NULL OR Physical_work_environment = '' THEN 1 END) AS Physical_work_environment_blank,
  COUNT(CASE WHEN Lack_of_recognition IS NULL OR Lack_of_recognition = '' THEN 1 END) AS Lack_of_recognition_blank,
  COUNT(CASE WHEN Lack_of_job_security IS NULL OR Lack_of_job_security = '' THEN 1 END) AS Lack_of_job_security_blank,
  COUNT(CASE WHEN Work_location IS NULL OR Work_location = '' THEN 1 END) AS Work_location_blank,
  COUNT(CASE WHEN Employment_conditions IS NULL OR Employment_conditions = '' THEN 1 END) AS Employment_conditions_blank,
  COUNT(CASE WHEN Maternity_family IS NULL OR Maternity_family = '' THEN 1 END) AS Maternity_family_blank,
  COUNT(CASE WHEN Relocation IS NULL OR Relocation = '' THEN 1 END) AS Relocation_blank,
  COUNT(CASE WHEN Study_Travel IS NULL OR Study_Travel = '' THEN 1 END) AS Study_Travel_blank,
  COUNT(CASE WHEN Ill_Health IS NULL OR Ill_Health = '' THEN 1 END) AS Ill_Health_blank,
  COUNT(CASE WHEN Traumatic_incident IS NULL OR Traumatic_incident = '' THEN 1 END) AS Traumatic_incident_blank,
  COUNT(CASE WHEN Work_life_balance IS NULL OR Work_life_balance = '' THEN 1 END) AS Work_life_balance_blank,
  COUNT(CASE WHEN Workload IS NULL OR Workload = '' THEN 1 END) AS Workload_blank,
  COUNT(CASE WHEN None_of_the_above IS NULL OR None_of_the_above = '' THEN 1 END) AS None_of_the_above_blank,
  COUNT(CASE WHEN Professional_Development IS NULL OR Professional_Development = '' THEN 1 END) AS Professional_Development_blank,
  COUNT(CASE WHEN Opportunities_for_promotion IS NULL OR Opportunities_for_promotion = '' THEN 1 END) AS Opportunities_for_promotion_blank,
  COUNT(CASE WHEN Staff_morale IS NULL OR Staff_morale = '' THEN 1 END) AS Staff_morale_blank,
  COUNT(CASE WHEN Workplace_issue IS NULL OR Workplace_issue = '' THEN 1 END) AS Workplace_issue_blank,
  COUNT(CASE WHEN Physical_environment IS NULL OR Physical_environment = '' THEN 1 END) AS Physical_environment_blank,
  COUNT(CASE WHEN Worklife_balance IS NULL OR Worklife_balance = '' THEN 1 END) AS Worklife_balance_blank,
  COUNT(CASE WHEN Stress_and_pressure_support IS NULL OR Stress_and_pressure_support = '' THEN 1 END) AS Stress_and_pressure_support_blank,
  COUNT(CASE WHEN Performance_of_supervisor IS NULL OR Performance_of_supervisor = '' THEN 1 END) AS Performance_of_supervisor_blank,
  COUNT(CASE WHEN Peer_support IS NULL OR Peer_support = '' THEN 1 END) AS Peer_support_blank,
  COUNT(CASE WHEN Initiative IS NULL OR Initiative = '' THEN 1 END) AS Initiative_blank,
  COUNT(CASE WHEN Skills IS NULL OR Skills = '' THEN 1 END) AS Skills_blank,
  COUNT(CASE WHEN Coach IS NULL OR Coach = '' THEN 1 END) AS Coach_blank,
  COUNT(CASE WHEN Career_Aspirations IS NULL OR Career_Aspirations = '' THEN 1 END) AS Career_Aspirations_blank,
  COUNT(CASE WHEN Feedback IS NULL OR Feedback = '' THEN 1 END) AS Feedback_blank,
  COUNT(CASE WHEN Further_PD IS NULL OR Further_PD = '' THEN 1 END) AS Further_PD_blank,
  COUNT(CASE WHEN Communication IS NULL OR Communication = '' THEN 1 END) AS Communication_blank,
  COUNT(CASE WHEN My_say IS NULL OR My_say = '' THEN 1 END) AS My_say_blank,
  COUNT(CASE WHEN Information IS NULL OR Information = '' THEN 1 END) AS Information_blank,
  COUNT(CASE WHEN Kept_informed IS NULL OR Kept_informed = '' THEN 1 END) AS Kept_informed_blank,
  COUNT(CASE WHEN Wellness_programs IS NULL OR Wellness_programs = '' THEN 1 END) AS Wellness_programs_blank,
  COUNT(CASE WHEN Health_Safety IS NULL OR Health_Safety = '' THEN 1 END) AS Health_Safety_blank,
  COUNT(CASE WHEN Gender IS NULL OR Gender = '' THEN 1 END) AS Gender_blank,
  COUNT(CASE WHEN Age IS NULL OR Age = '' THEN 1 END) AS Age_blank,
  COUNT(CASE WHEN Aboriginal IS NULL OR Aboriginal = '' THEN 1 END) AS Aboriginal_blank,
  COUNT(CASE WHEN Torres_Strait IS NULL OR Torres_Strait = '' THEN 1 END) AS Torres_Strait_blank,
  COUNT(CASE WHEN South_Sea IS NULL OR South_Sea = '' THEN 1 END) AS South_Sea_blank,
  COUNT(CASE WHEN Disability IS NULL OR Disability = '' THEN 1 END) AS Disability_blank,
  COUNT(CASE WHEN NESB IS NULL OR NESB = '' THEN 1 END) AS NESB_blank
FROM DETE

SELECT * INTO Final_Table FROM DETE

--Check NULLs in key columns
SELECT COUNT(*) AS Missing_Classification
FROM Final_Table
WHERE Classification IS NULL


-- Convert text-based nulls to actual NULLs
UPDATE Final_Table
SET DETE_Start_Date = NULL
WHERE DETE_Start_Date = 'Not Stated'

-- Convert the String to Date Format
ALTER TABLE Final_Table
ADD DETE_Start_Date_Formatted DATE

UPDATE Final_Table
SET DETE_Start_Date_Formatted = TRY_CONVERT(DATE, DETE_Start_Date)


-- Check distinct values to spot inconsistencies
SELECT DISTINCT Age FROM Final_Table

-- Normalize values (e.g., trim spaces, convert cases)
UPDATE Final_Table
SET Age = TRIM(Age)

-- Check % null
SELECT COUNT(*) AS Total, 
       SUM(CASE WHEN Aboriginal IS NULL THEN 1 ELSE 0 END) AS Nulls_Aboriginal
FROM Final_Table

-- Example logic to merge boolean and text version
ALTER TABLE Final_Table ADD WorkLife_Combined VARCHAR(50)
UPDATE Final_Table
SET WorkLife_Combined = 
    CASE 
        WHEN Work_life_balance = 1 THEN 'Yes'
        ELSE Worklife_balance
END

SELECT * FROM Final_Table

SELECT 
    Region,
    COUNT(*) * 100.0 / (SELECT COUNT(*) FROM DETE) AS PercentExitsByRegion
FROM DETE
GROUP BY Region

SELECT 
    Gender,
    COUNT(*) * 100.0 / (SELECT COUNT(*) FROM DETE) AS PercentExitsByGender
FROM DETE
GROUP BY Gender


SELECT 
  Age,
  COUNT(*) * 100.0 / (SELECT COUNT(*) FROM DETE ) AS PercentExitsByAgeGroup
FROM DETE
GROUP BY Age
ORDER BY Age

SELECT Disability FROM DETE