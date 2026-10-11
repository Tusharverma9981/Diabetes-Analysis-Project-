use project;

select * from diabetes_data;

-- What is the total number of patient records?

select count(*) from diabetes_data;


-- Q2
-- What percentage of records have Outcome 0 versus Outcome 1?

select Outcome , (count(*)*100)/(select count(*) from diabetes_data) as per_records
 from diabetes_data group by Outcome;

-- Q3
-- How do average glucose levels differ between the two outcome groups?

select Outcome , avg(Glucose) as avg_glucose
 from diabetes_data group by Outcome;


-- Q4
-- How do BMI and age differ between outcome groups?




-- Q5
-- How does the percentage of Outcome 1 vary across age groups?

select Age , (count(*)*100)/(select count(*) from diabetes_data) as per_outcome
 from diabetes_data where Outcome = 1 group by Age;


-- Q6
-- How does the recorded outcome vary across glucose ranges?




-- Q7
-- What are the average blood pressure and insulin measurements by outcome?

select Outcome, avg(BloodPressure),avg(Insulin) from diabetes_data group by Outcome

-- Q8
-- Which variables have the strongest correlation with Outcome?



-- Q9
-- How many records have missing or invalid measurements in the original dataset?




-- Q10
-- How do the findings change when you compare the original and cleaned datasets?
