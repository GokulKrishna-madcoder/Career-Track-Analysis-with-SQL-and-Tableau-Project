# Career-Track-Analysis-with-SQL-and-Tableau-Project
Project Overview
This project aims to analyze the career track enrollments and achievements of 365 Data Science students. The analysis involves extracting data from a SQL database, processing and visualizing the data using Tableau, and interpreting the results to provide insights into student performance and engagement.

Project Objectives
Data Extraction and Processing:

Retrieve necessary information from an SQL database containing data on career track enrollments and completions.
Prepare a dataset containing student-track pairs, enrollment dates, completion status, completion times, and completion buckets.
Data Visualization:

Use Tableau to create visualizations that provide insights into the following:
Monthly enrollments and completions
Completion rates over time
Distribution of completion times across different career tracks
Comparison of enrollments and completions among different career tracks
Data Interpretation:

Analyze the visualizations to answer key questions about student performance and engagement:
What is the number of enrolled students monthly? Which month has the most enrollments, and why?
Which career track do students enroll in the most?
What is the career track completion rate? Is it increasing, decreasing, or staying constant over time?
How long does it typically take students to complete a career track? What type of subscription (monthly, quarterly, or annual) is most suitable for students aiming to complete a career track?
Which career track has the lowest fraction of completions in January?
Which completion bucket contains the smallest number of representatives for the Data Scientist career track?
Which completion bucket contains the highest number of people for the Data Analyst career track?
Project Structure
SQL Scripts:
data_extraction.sql: SQL script for extracting and processing the necessary data from the database.
Tableau Workbook:
career_track_analysis.twb: Tableau workbook containing the visualizations for the project.
CSV Data File:
career_track_completions.csv: Processed dataset containing the extracted data used for visualization in Tableau.
Documentation:
README.md: Project documentation and overview.
project_report.pdf: Detailed report with analysis, interpretations, and conclusions drawn from the visualizations.
Getting Started
Prerequisites:

SQL database with the necessary tables (career_track_info and career_track_student_enrollments).
Tableau Desktop for creating and viewing visualizations.
Steps:

Run the data_extraction.sql script to extract and process the data.
Load the career_track_completions.csv file into Tableau.
Open the career_track_analysis.twb workbook in Tableau to view the visualizations.
Analyze the visualizations and refer to the project_report.pdf for detailed insights.
Conclusion
This project provides a comprehensive analysis of 365 Data Science students' career track enrollments and completions. By leveraging SQL and Tableau, we can uncover valuable insights into student performance, engagement, and completion rates, helping inform decisions for improving the learning experience.

License
This project is licensed under the MIT License. See the LICENSE file for more details.

Acknowledgements
Special thanks to the 365 Data Science team for providing the data and resources necessary for this project.
