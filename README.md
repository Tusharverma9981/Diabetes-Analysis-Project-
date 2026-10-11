# Diabetes Data Analytics

An exploratory data analytics project using **Python, MySQL, and Power BI** to examine diabetes-related measurements and recorded outcomes in the Pima Indians Diabetes dataset.

## Project Overview

This project explores the dataset's outcome distribution and examines how measurements such as glucose, BMI, age, blood pressure, and insulin vary across recorded outcome groups. Python is used for data inspection, cleaning, and exploratory analysis; MySQL is used to query summary metrics; and Power BI is used to present results visually.

> **Important:** This is an exploratory analysis of a limited dataset. It is not a medical diagnostic tool, does not establish causation, and its findings should not be generalized to all populations.

## Objectives

- Inspect the dataset structure, data types, and data quality.
- Investigate zero values that may represent unrecorded measurements.
- Explore the distribution of the `Outcome` variable.
- Compare glucose and other measurements across outcome groups.
- Use SQL aggregation and grouping to answer analytical questions.
- Build a Power BI dashboard to communicate descriptive findings.

## Dataset

**Dataset:** Pima Indians Diabetes Database  
**Source:** [Kaggle — Pima Indians Diabetes Database](https://www.kaggle.com/datasets/uciml/pima-indians-diabetes-database)

The commonly distributed version contains **768 records and 9 columns**:

| Column | Description |
|---|---|
| `Pregnancies` | Number of pregnancies recorded |
| `Glucose` | Plasma glucose measurement |
| `BloodPressure` | Diastolic blood pressure measurement |
| `SkinThickness` | Triceps skinfold thickness measurement |
| `Insulin` | Serum insulin measurement |
| `BMI` | Body mass index |
| `DiabetesPedigreeFunction` | Family-history-related diabetes score |
| `Age` | Age in years |
| `Outcome` | Recorded outcome label (`0` or `1`) |

`Outcome = 0` denotes a negative recorded outcome and `Outcome = 1` denotes a positive recorded outcome in this dataset. These labels should not be treated as a diagnosis produced by this project.

## Tools and Technologies

- **Python:** Pandas, NumPy, Matplotlib, Seaborn
- **SQL:** MySQL
- **BI / Visualization:** Microsoft Power BI
- **Notebook:** Jupyter Notebook

## Project Workflow

### 1. Data inspection and cleaning (Python)

- Loaded the CSV dataset with Pandas.
- Reviewed dataset dimensions, data types, summary statistics, and missing values.
- Checked zero values in `Glucose`, `BloodPressure`, `SkinThickness`, `Insulin`, and `BMI`.
- Treated zeros in these selected measurement columns as missing values and filled missing values using each column's median.

**Data-cleaning note:** This is a pragmatic imputation choice for an exploratory project. In particular, `Insulin` and `SkinThickness` have substantial zero-value counts in the commonly distributed dataset. Median imputation does not recover the original measurements and can influence distributions and correlations. Zero values in `Pregnancies` and `Outcome` were retained because they can be meaningful.

### 2. Exploratory Data Analysis (Python)

The analysis includes:
- Outcome distribution
- Glucose comparison by recorded outcome
- BMI versus age exploration
- Correlation heatmap for numerical variables

### 3. SQL analysis (MySQL)

The SQL work includes queries or planned analysis for:
- Total number of records
- Outcome distribution and percentages
- Average glucose by outcome
- Measurement comparisons across outcome groups
- Age-group and glucose-range analysis
- Data-quality checks

Some questions in the SQL file may still need to be completed or refined before the project is considered final. In particular, age-group percentages should be calculated within each age group, and percentages should use decimal arithmetic (for example, `100.0`) to avoid integer division.

### 4. Power BI dashboard

The Power BI report is intended to show:
- KPI cards for total records, positive outcomes, positive outcome percentage, and average glucose
- Outcome distribution donut chart
- Average glucose by outcome column chart
- Outcome percentage by age group
- BMI versus glucose scatter plot, colored by outcome

Use the supplied `.pbix` file to explore the current dashboard. Verify that the report uses the cleaned dataset and that its metrics match the SQL results.

## Initial Findings

Based on the exploratory results observed during development:

- The dataset contains **768 records**.
- **500 records (65.1%)** have `Outcome = 0`.
- **268 records (34.9%)** have `Outcome = 1`.
- The glucose box plot appeared to show generally higher glucose measurements among records with `Outcome = 1` than among records with `Outcome = 0`.

These are descriptive observations from this dataset, not proof of causation or estimates of diabetes prevalence in the general population. Recalculate metrics from the final cleaned data before publishing final results.

## Repository Structure

A suggested repository structure is:

```text
Diabetes-Data-Analytics/
├── Diabetes_analysis.ipynb
├── Queries for analysis.sql
├── cleaned_diabetes.csv
├── Diabetes_analysis.pbix
├── screenshots/
│   └── dashboard.png
└── README.md
```

Adjust filenames and remove any files that are not included in your repository. Follow the dataset's license and terms when redistributing data.

## How to Run

1. Download the dataset from the [Kaggle dataset page](https://www.kaggle.com/datasets/uciml/pima-indians-diabetes-database).
2. Place the CSV file in the project directory.
3. Open `Diabetes_analysis.ipynb` in Jupyter Notebook.
4. Install the required Python packages:

   ```bash
   pip install pandas numpy matplotlib seaborn sqlalchemy pymysql
   ```

5. Run the notebook cells in order to inspect, clean, and analyze the data.
6. Configure MySQL with your local database credentials and run the SQL queries in your SQL client.
7. Open `Diabetes_analysis.pbix` in Power BI Desktop and refresh the data connection as needed.

**Before final submission:** Confirm the notebook writes the cleaned DataFrame (for example, `cleaned_df`) to MySQL rather than the original DataFrame (`df`). Otherwise, the SQL table and Power BI report may still contain the original zero values.

Do not commit database passwords, connection strings containing secrets, or other credentials to GitHub.

## Limitations

- The dataset is relatively small and represents a specific population; results may not generalize to other populations.
- Some zero measurements may be unrecorded values.
- Median imputation can affect statistical summaries and correlations.
- Correlation does not imply causation.
- This project is for learning and exploratory analytics, not medical diagnosis or treatment decisions.

## Future Improvements

- Complete and validate all SQL analysis questions.
- Compare the original and cleaned datasets to assess the effect of imputation.
- Add clear dashboard tooltips, slicers, and a data-quality summary.
- Validate Power BI metrics against SQL query results.
- Add a final findings section supported by calculated results.

## Author

**Tushar Verma**  
Data Analytics project using Python, MySQL, and Power BI.
