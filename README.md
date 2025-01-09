# Group-Project-3
All of this code was split up with different portions done by different group members. It was also written with the help of the Xpert AI tool.

TITLE - The impacts of cardiac disease-related risk factors and healthcare spending on rates of incidence and mortality of heart failure, ischemic heart disease and myocardial infarction across Canada.

AIM: Analyze whether or not amount spent on healthcare and cardiac-related risk factors have an impact on these diseases. Particularly, do the incidence rates change according to healthcare spending?

PART 1 - DATA COLLECTION
Data about the rates of incidence and mortality of the three diseases was collected from https://health-infobase.canada.ca/ccdss/data-tool/. Out of many options for cardiac diseases, we narrowed down our analysis on Ischemic Heart Disease, Heart Failure and Myocardial Infarction.

Data about healthcare spending was collected from https://www.cihi.ca/en/national-health-expenditure-trends - specifically data from "Series F".

Data about risk factors was collected from https://www150.statcan.gc.ca/t1/tbl1/en/tv.action?pid=1310009601

PART 2 - DATA CLEANING
1) import dependencies: import pandas as pd
from pathlib import Path
import matplotlib.pyplot as plt
import torch
import torch.nn as nn
import torch.optim as optim
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import StandardScaler

2) Csv files were loaded using Path() and then pd.read_csv, thanks to the help of from pathlib import Path.

3) Unnecessary columns were dropped using columns_kept = [], and then df = df[columns_kept]

4) Certain columns were renamed using .rename(columns={}).

5) .iloc was used to end the dataset at the last data point of interest as there were additional rows that were not necessary.

6) fillna was used to fill missing values with "0" for better data handling.

7) We filtered so that the dataset begins in the year 2015 and only rows with "both sexes" are kept as the analysis is not gender-specific.

PART 3 - VISUALIZATIONS

3.1 - Maps
Interactive maps visualizing incidence and mortality counts categorized by year and type of cardiac disease.
The maps are designed to allow users to explore geographical health data interactively.

Interactive Maps with Leaflet.js
The maps created in this project are built using Leaflet.js, a lightweight JavaScript library for creating interactive maps. This technology makes the maps highly interactive and user-friendly, allowing for a dynamic and engaging exploration of the data.

Key Features of the Interactive Maps:


Pop-ups: When a user clicks on a specific region (e.g., acity), a pop-up will appear displaying detailed information about the incidence and mortality rates for that region.
Data Points: The pop-up might include additional information, such as the exact numbers for cases and deaths .
This interaction enables users to drill down into the data for individual regions and understand the context in which the health data exists.

Color-Coding Based on Health Data:

The regions on the map are color-coded based on the incidence and mortality rates (e.g., light green for low rates and dark red for high rates). This visual representation makes it easy to see trends and outliers at a glance.

Legend: A legend is included on the side or bottom of the map to explain what each color represents in terms of incidence and mortality rates.


3.2 - Incidence and mortality rates
Plotting was done using matplotlib and data was split into "high cases/deaths" = 10,000+ and "low cases/deaths" = <10,000 because there were drastic differences between the provinces due to differences in population. So, the split allowed for better readability. Dataframes were pivoted to allow for the desired analysis - x-axis consists of fiscal years, y-axis consists of counts of rates/deaths per year per province and each line in the line graph represented a province (color coded with a legend). The graphs were saved in the "Output folder.

3.3 - Healthcare Spending
Plotting was done using matplotlib and data was split into "high spending" = $25,000 million+ and "low cases/deaths" = <$25,000 million because there were drastic differences between the provinces due to differences in population. So, the split allowed for better readability. The dataframe was transformed to allow for the desired analysis - x-axis consists of fiscal years, y-axis consists of amount spent per year per province and each line in the line graph represented a province (color coded with a legend). The code to transform it was the following - melt(id_vars=['Fiscal year'], 
                                               var_name='Geography', 
                                               value_name='spending'). 
The graphs were saved in the "Output folder.

3.4 - Risk Factors

3.5 - Linear Regressions, incidence rates and healthcare spending
Created using PyTorch in order to satisfy the requirement of using a python library that was not covered in class. Prior to that, all three incidence datasets were merged into one to facilitate the analysis - done using pd.merge on "Geography". Then, this dataset was merged with the transformed spending one.
Steps are as follows: normalize the data using StandardScaler() --> fit and transform the data using scaler.fit_transform() and passing the columns we normalized previously --> converting this data into PyTorch tensors using torch.tensor, defining x and y --> define and create the linear regression model using class --> define Loss Function using nn.MSELoss() and Optimizer using optim.Adam(model.parameters(), lr=0.01) --> train the model using 1000 epochs --> evaluate the model with predictions --> de-normalize the data for easier plotting --> plot de-normalized data using plt.scatter() and plt.plot() to make the graph. The resulting graphs for each disease can be found in the "Output" folder.

Analysis - All three diseases have a correlation value of about 0.98, suggesting an incredibly strong correlation between healthcare spending and incidence rates. That said, while this appears logical, the fact that it is a positive correlation is not logical. Thus, it is difficult to draw a firm conclusion on the impact that healthcare spending will have on incidence rates.


![](Simple org chart - Page 2 (1).png)

