# Analysis and Findings on the Carbon Emissions datasets

This project involved building a pipeline to analyze global carbon emissions data, with a focus on understanding trends over time, identifying the top emitters, and examining the relationship between emissions and other factors. Here's a breakdown of the key findings based on the code and outputs provided:

## 1. Overview of Datasets

- **Emissions Data**: The dataset `GCB2022v27_MtCO2_flat.csv` contains data on fossil CO2 emissions from various sources (coal, oil, gas, cement) across different countries and years.
- **Per Capita Emissions Data**: The dataset `GCB2022v27_percapita_flat.csv` holds data on per capita fossil CO2 emissions for the same countries and years.

## 2. Data Cleaning and Preparation

- **Missing Values**: Rows with missing values were dropped to ensure accurate analysis.
- **Aggregation**: Data was aggregated by country and year to calculate total emissions and the percentage contributions of each emission source (coal, oil, gas, cement).

## 3. Key Findings

### A. Emissions by Source
- **Coal**: In many countries, coal contributed significantly to total emissions, with percentages often exceeding 50% in earlier years.
- **Oil**: Oil also played a major role, with contributions typically around 30-45%.
- **Gas and Cement**: These sources had lower percentages, but their importance increased in some countries over time.

### B. Global Trends in CO2 Emissions Over Time
- **Steady Increase**: From 1904 to 2021, there was a consistent increase in global CO2 emissions, reflecting industrial growth, population increase, and energy consumption patterns.
- **Recent Dips**: A notable dip in 2020 corresponds to the global slowdown due to the COVID-19 pandemic, highlighting the impact of economic activities on emissions.

### C. Top 10 CO2 Emitting Countries
- **USA and China**: These two countries were the largest contributors to global CO2 emissions, with the USA leading historically and China rapidly increasing its emissions in recent decades.
- **Other Major Emitters**: Countries like Russia, Japan, Germany, and India also ranked high, reflecting their industrialized economies.

### D. Per Capita Emissions Trends
- **Early 20th Century**: Per capita emissions were relatively high in the early 20th century, especially in industrialized nations.
- **Recent Years**: There has been a slight decline in per capita emissions in recent years, potentially due to energy efficiency improvements and shifts toward cleaner energy sources.

## 4. Visualizations

- **Line Plot**: A line plot was used to visualize global CO2 emissions over time, clearly showing the upward trend with a noticeable dip in 2020.
- **Bar Chart**: A bar chart highlighted the top 10 CO2 emitting countries, showcasing the significant contributions of the USA and China.
- **Heatmap**: The heatmap displayed the distribution of emissions across countries and years, providing a visual representation of how emissions have evolved regionally.

## Conclusion

The analysis provided valuable insights into the trends and patterns of global CO2 emissions. It underscored the role of major industrialized nations in driving global emissions and highlighted the changes over time, especially the dip during the COVID-19 pandemic. The findings emphasize the need for continued efforts to reduce emissions through cleaner energy sources and more efficient technologies as we move forward in addressing climate change.
