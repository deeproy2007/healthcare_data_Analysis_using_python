📊 Healthcare Dataset Cleaning & Analysis

This project demonstrates data cleaning, feature standardization, and exploratory visual analysis on a healthcare dataset using Pandas, Matplotlib, and Seaborn.

🚀 Project Overview

Healthcare datasets often contain missing values, inconsistent formats, and invalid entries.
This project handles such issues step-by-step and builds clean visualizations to understand:

Age-wise exercise patterns

Age-wise disease-risk distribution

Relationship between BMI & Disease Risk

Relationship between Exercise Minutes & Disease Risk

Gender-wise average disease risk

The cleaned dataset is exported as clean_healthcare.csv for future use.

🧹 Data Cleaning Steps
✔ 1. Age Cleaning

  Converted age into numeric

  Removed rows where age could not be converted
  
  Ensured age is stored as integer

✔ 2. Gender Standardization

   Removed missing gender rows
Replaced codes:

  "M" → "Male"

  "F" → "Female"

  "Unknown" → "Others"

✔ 3. Blood Pressure Handling

    Converted column to numeric

    F illed missing values with mean

    Converted to integer

✔ 4. Glucose Cleaning

    Converted to numeric

    Filled missing values with mean

    Stored as integer

✔ 5. Cholesterol

     Dropped rows with missing cholesterol

✔ 6. BMI Cleaning

    Filled missing BMI values with mean

    Converted to integer

✔ 7. Exercise Minutes

    R emoved negative entries

    Converted to integer

✔ 8. Disease Risk Preparation

    C onverted to numeric

     Filled missing values with mean

     Removed negative values

✔ 9. Smoker Column Standardization

    Mapped multiple formats (yes/no, 1/0, etc.) into clean binary values.

✔ 10. Export Cleaned File

    Saved final dataset as:

     "clean_healthcare.csv"

📈 Visualizations Included
🟢 1. Age-wise Average Exercise Minutes (Pie Chart)

Shows how different age groups contribute to overall exercise time.

🔵 2. Age-wise Average Disease Risk (Pie Chart)

Identifies which age groups have higher disease risk.

🟣 3. BMI vs Disease Risk (Scatter Plot)

Helps observe whether higher BMI correlates with disease risk.

🟡 4. Exercise Minutes vs Disease Risk (Scatter Plot)

Reveals whether more exercise lowers disease risk.

🟠 5. Gender-wise Average Disease Risk (Bar Chart)

Compares average disease risk among Male, Female, and Others.
        🧪 Libraries Used
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns
       📂 Output Files  
| File                   | Description                             |
| ---------------------- | --------------------------------------- |
| `clean_healthcare.csv` | Cleaned dataset ready for ML / analysis |
| Plots (visual output)  | Generated using matplotlib & seaborn    |
▶️ How to Run

Place healthcare_dataset.csv in the same folder.

Run the script in Jupyter Notebook / VS Code / Python environment.

Clean dataset + visualizations will be generated automatically.

🙌 Contributions

Feel free to fork this project, submit improvements, or add new visualizations.




        