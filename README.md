# 🎬 OTT Platform Content Analysis using MySQL

## 📌 Project Overview

This project analyzes an OTT platform content dataset (Netflix / Prime TV–style data) using **MySQL**. The goal is to demonstrate a complete **SQL data analysis workflow** — from raw data import and cleaning to exploratory analysis and business insights.

This project is designed to be **resume-ready** and suitable for showcasing SQL skills on **GitHub**.

---

## 🧩 Dataset Description

The dataset contains information about TV shows available on an OTT platform, including:

* Show name
* Release year
* Number of seasons
* Language
* Genre
* IMDb rating
* Age rating / viewer category

Some fields contain missing or inconsistent values, making it ideal for real-world data cleaning practice.

---

## 🛠️ Tools & Technologies Used

* **MySQL 8.0**
* **MySQL Workbench** (Import Data Wizard)

---

## 🔄 Project Workflow

### 1️⃣ Data Import

* Imported CSV data using **MySQL Workbench Import Data Wizard**
* All columns were initially created as `VARCHAR` to avoid row rejection due to missing numeric values
<img width="1225" height="694" alt="Screenshot 2025-12-27 183951" src="https://github.com/user-attachments/assets/cad14517-2982-4201-94d1-56fc2405ae21" />

---

### 2️⃣ Data Cleaning

Performed multiple cleaning steps, including:

* Handling empty and invalid IMDb values (`'', NA, N/A, Not Rated`)
* Cleaning empty release year values
* Standardizing age-of-viewer categories
<img width="460" height="290" alt="Screenshot 2025-12-27 185918" src="https://github.com/user-attachments/assets/6e80290c-b69d-4ff0-a77e-e90da5df2053" />

---

### 3️⃣ Data Type Conversion

After cleaning, columns were safely converted to appropriate data types:

* IMDb → `FLOAT`
* Release year → `INT`
* Age of viewers → mapped to numeric age limits (`INT`)


---

### 4️⃣ Exploratory Data Analysis (EDA)

Key analyses performed:

* Content count by release year
* IMDb rating distribution
* Top 10 highest-rated shows
* Genre-wise content distribution
* Language-wise content distribution
<img width="1014" height="506" alt="Screenshot 2025-12-27 191158" src="https://github.com/user-attachments/assets/5a785fd1-0a19-46b3-a34f-7abacf40d88a" />
<img width="654" height="521" alt="Screenshot 2025-12-27 192511" src="https://github.com/user-attachments/assets/1b4af585-0a29-4ddb-bddb-a4c49970cfe2" />
<img width="662" height="630" alt="Screenshot 2025-12-27 193628" src="https://github.com/user-attachments/assets/2f827843-9150-4fac-958e-278dbd3d8a53" />
<img width="570" height="405" alt="Screenshot 2025-12-27 195821" src="https://github.com/user-attachments/assets/c1b83778-3009-46ed-9e2f-9f8c3a067af0" />
<img width="572" height="590" alt="Screenshot 2025-12-27 201031" src="https://github.com/user-attachments/assets/cc13d777-6960-4b66-adf7-5c256568841c" />
<img width="585" height="503" alt="Screenshot 2025-12-27 202903" src="https://github.com/user-attachments/assets/51c44ba9-1c59-492a-b14d-5464a3f92986" />


---

## 💡 Key Insights

* Content production increased significantly in recent years
* Drama and Comedy are the most common genres
* Shows with higher IMDb ratings tend to have multiple seasons
* Family-friendly content makes up a significant portion of the catalog


## 📌 Skills Demonstrated

* SQL Data Cleaning
* Handling Missing Values
* Data Type Conversion
* Exploratory Data Analysis (EDA)
* Subqueries
* Analytical Thinking

---

## 📬 Contact

If you have feedback or suggestions, feel free to connect.

---

⭐ *If you find this project useful, consider giving it a star!*
