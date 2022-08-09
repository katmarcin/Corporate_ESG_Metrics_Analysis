# Corporate_ESG_Metrics_Analysis

Personal Project: Creating a visual representation of data via Tableau to allow stakeholders and/or non-technical audiences to examine ESG attributes and indicators from over 15,000 companies, as reported by MSCI. MSCI ESG Ratings are used to measure a company's management of financially relevant ESG risks and opportunities. They are one of the leading providers of ESG-related data for the global investment community.

ESG stands for Environmental, Social, and Governance and is term used often in the corporate space to set a standard of impact that companies can adhere to. ESG is an up-and-coming criteria that many companies are using for investing and screening. For many companies with documented ESG strategies, it is critical to assess and adhere to ESG ratings/scores for compliance purposes.

MSCI rates ESG with letters: ranging from leader (AAA, AA), average (A, BBB, BB) to laggard (B, CCC). 

To learn more about MSCI, please visit the following link: https://www.msci.com/who-we-are/about-us


### Tools:
Jupyter Notebook, Tableau Software

### Language:
Python, SQL

### Libraries:
pandas, numpy

### Database:

PostgreSQL/pgAdmin4

### Dataset:
https://www.kaggle.com/datasets/debashish311601/esg-scores-and-ratings


## Visual Representation of Data 

https://public.tableau.com/app/profile/katherine.marcinkowski/viz/ESGCompanyDataBreakdown/ESGDataBreakdown?publish=yes

Utilized Tableau Software to create dynamic visual representations of the data to showcase various ESG attributes and higlight any potential patterns hidden within the data.


a. Average Overall ESG Score by Country Appearance: The US, Japan, and Canada appeared to be the countries most represented by the companies in the dataset. The US exceeds the latter by almost 3x the amount of appearances. The average overall ESG score for each country is listed next to its corresponding bar in the graph.

<img src="https://github.com/katmarcin/Corporate_ESG_Metrics_Analysis/blob/3706cdec152c642975651b6aa18e56eff9846cf5/images/country_esg.jpg" width="680" height="440" />

b. Sector Breakdown by Size: Banks, Utilies, and Real Estate Management & Services represent a large portion of the dataset. Corresponding average overall ESG scores for each sector are lsited adjacent to each bar in the graph.

<img src="https://github.com/katmarcin/Corporate_ESG_Metrics_Analysis/blob/3706cdec152c642975651b6aa18e56eff9846cf5/images/sector.jpg" width="680" height="440" />

c. Treemap: Overall ESG Rating. The following spread highlights the proportions of each rating relative to each other within the entire dataset. The more common the rating, the larger the box. 'A' and 'BBB' are the two most common overall ratings seen across all industries.

<img src="https://github.com/katmarcin/Corporate_ESG_Metrics_Analysis/blob/3706cdec152c642975651b6aa18e56eff9846cf5/images/treemap.jpg" width="680" height="440" />

## Data Mining / Cleaning the Data

Data mining and cleaning is performed within Jupyter Notebook using Python coupled with pandas and numpy libraries. 

## Database Creation 

(insert images)


Applied data engineering concepts used to create the database in PostgreSQL/pgadmin4. Data analysis is performed on the cleaned CSV file exported from the Jupyter. 


