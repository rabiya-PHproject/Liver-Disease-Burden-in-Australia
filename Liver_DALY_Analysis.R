# liver_daly_analysis.R
# Author: Rabiyatul Adawiyah
# Period: July 2025
# Description: Analysis of DALY for liver diseases in Australia using AIHW data (2003–2023)

#Load Libraries (Step 1)
library(readxl)
library(dplyr)
library(tidyr)
library(ggplot2)
library(ggrepel)
library(scales)

#Load Data (Step 2)
daly_data <- read_excel("AIHW_BOD_39_ABDS_2023_national_disease_burden_data_tables.xlsx", sheet = "1C_Disease")

#Clean Data (Step 3)
# Fix duplicated column names
names(daly_data)[duplicated(names(daly_data))] <- paste0(names(daly_data)[duplicated(names(daly_data))], "_dup")

#Transform Data (wide → long) (Step 4)
long_daly <- daly_data %>%
  pivot_longer(cols = -data_year, names_to = "disease", values_to = "daly")

#Filter for Liver Disease (Step 5)
liver_diseases <- c(
  "Hepatitis A",
  "Hepatitis B (acute)",
  "Hepatitis C (acute)",
  "Chronic liver disease",
  "Liver cancer"
)

liver_daly <- long_daly %>%
  filter(disease %in% liver_diseases) %>%
  arrange(disease, data_year)

#Plot Data (Step 6)
ggplot(liver_daly, aes(x = data_year, y = daly, color = disease)) +
  geom_line(linewidth = 1.2) +
  geom_point(size = 2) +
  ggrepel::geom_text_repel(aes(label = round(daly)), size = 3, show.legend = FALSE) +
  scale_y_continuous(labels = scales::comma) +
  labs(
    title = "DALY Trends for Liver Diseases in Australia (2003–2023)",
    x = "Year",
    y = "DALY",
    color = "Disease"
  ) +
  theme_minimal()

#Save Plot (Step 7)
ggsave("liver_daly_trend.png", width = 10, height = 6, dpi = 300)
