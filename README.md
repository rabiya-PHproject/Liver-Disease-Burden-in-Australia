# Liver Disease Burden Analysis (2003–2023)

## 📊 Dataset Overview
- **Sample size**: Data covering 21 years (2003–2023) on liver disease burden in Australia

### **Key Variables:**
- `data_year`, `disease_group`, `disease`  
- `sex`, `age_group`  
- `yll` (Years of Life Lost)  
- `yld` (Years Lived with Disability)  
- `daly` (Disability-Adjusted Life Years)  
- `crude_rate` (DALY rate per 100,000 population)

---

## 🔍 Derived Variables (Calculated Metrics)

| Column           | Logic Description                                                                 |
|------------------|------------------------------------------------------------------------------------|
| **Total_DALY**   | Sum of `yll` and `yld` to represent total burden of disease                       |
| **DALY_Rate**    | DALY rate standardized per 100,000 population (`crude_rate`)                      |
| **Age_Grouping** | Categorized into broad age groups for trend analysis (`0-14`, `15-44`, `45-64`, `65+`) |

💡 Derived using data wrangling in R for clean, comparable metrics across years and conditions.

---

## 🛠️ Tools Used
- **R & RStudio**: Data cleaning, manipulation, and visualization using `tidyverse`, `dplyr`, and `ggplot2`  
- **Microsoft Excel**: Initial exploratory data review and pivot tables  
- **Canva (planned)**: For designing summary infographic and visual reports

---

## 📈 Key Findings
- **Chronic liver disease** and **liver cancer** show a **clear increasing trend** in DALYs from 2003 to 2023  
- **Hepatitis A, B, and C** display a **decreasing trend** in DALYs over time  
- The overall burden of liver diseases has shifted from viral hepatitis to more chronic conditions, suggesting changing public health priorities  
- These trends reflect the impact of prevention efforts in hepatitis and raise concern about the growing burden of chronic liver conditions

---

## 🌍 Impact

This trend analysis provides critical insight into the shifting burden of liver diseases in Australia over two decades. The findings reveal a clear transition from the dominance of viral hepatitis (A, B, and C) — which show a consistent decline — to a growing burden from **chronic liver disease and liver cancer**, which have shown a steady increase in DALYs from 2003 to 2023.

These trends underscore the **success of public health efforts** such as vaccination, blood screening, and harm reduction strategies in reducing hepatitis-related disease burden. However, the **rising impact of chronic liver disease and liver cancer** highlights emerging challenges that demand urgent public health attention.

### 🔎 Key Implications:
- Strengthen **alcohol harm reduction** and **NCD (non-communicable disease)** prevention programs  
- Scale up **early screening**, **liver function monitoring**, and **treatment access**  
- Shift focus from infectious disease control to **chronic disease management** and **lifestyle interventions**

This project demonstrates a **reproducible, transparent, and data-driven approach** to analyzing national health datasets. The results support strategic resource allocation, **targeted interventions**, and ongoing **monitoring of progress** in reducing liver disease burden in Australia.

---

## 📄 Project Infographic  
[Click here to view the infographic (PDF)](./Liver_Disease_Burden_Infographic.pdf)

---


### DALY Trends for Liver Diseases
## 📊 Visualizations (Generated in R)

All visualizations in this project were created using **R programming language**, specifically the `ggplot2` package within the **tidyverse** ecosystem. The graphs illustrate the temporal trends in DALYs (Disability-Adjusted Life Years) across different liver diseases in Australia from 2003 to 2023.

👉 [Click here to view the full PDF](https://github.com/rabiya-PHproject/Liver-Disease-Burden-in-Australia/blob/main/Liver%20DALY%20Trend%20in%20Australia.pdf)


## Contact  
For questions or collaboration, please contact:  
**Rabiyatul Adawiyah** – rabiyatuladawiyahnasution@gmail.com

---

