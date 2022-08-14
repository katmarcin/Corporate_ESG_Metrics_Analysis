--create the table and assign data types
CREATE TABLE MSCI_Table (
     company_name VARCHAR,
     country VARCHAR,
	 sector VARCHAR,
	 subsector VARCHAR,
	 overall_ESG_rating VARCHAR,
	 overall_ESG_score float8,
	 environmental_score float8,
	 social_score float8,
	 governance_score float8
);

-- import the csv file with UTF-8 encoding and including the header
COPY clean_MSCI_esg
FROM '/Users/katmarcin/Public/MSCI_Table.csv'
DELIMITER ','
CSV HEADER;

-- ensure proper importing
SELECT * FROM MSCI_Table;

-------------------------------------------------------------------------------

-- count of US companies with highest overall esg rating (AAA) and score (10)
SELECT COUNT(company_name) from MSCI_Table
WHERE overall_ESG_rating='AAA'
	AND country='US'
	AND overall_esg_score='10';
	
-- list of US companies with highest overall esg rating (AAA) and score (10)
SELECT company_name, country, overall_ESG_rating, overall_esg_score from MSCI_Table
WHERE overall_ESG_rating='AAA'
	AND country='US'
	AND overall_esg_score ='10';

-- list of US companies by overall esg score descending in the 'AAA' category
SELECT company_name, country, overall_ESG_rating, overall_esg_score from MSCI_Table
WHERE overall_ESG_rating='AAA'
	AND country='US'
	ORDER BY overall_esg_score DESC;
	
-------------------------------------------------------------------------------------------
	
-- list of US companies by overall esg score ascending in the 'CCC' category
SELECT company_name, overall_ESG_rating, overall_esg_score, country from MSCI_Table
WHERE overall_ESG_rating='CCC'
	AND country='US'
	ORDER BY overall_esg_score ASC;
	
	
-- list of US companies in the 'Household & Personal Products' sector in the 'CCC' category
SELECT company_name, overall_ESG_rating, overall_esg_score, country, sector from MSCI_Table
WHERE overall_ESG_rating='CCC' AND country='US' AND sector='Household & Personal Products';


-- list of US companies by sector ascending in the 'CCC' category 
SELECT company_name, overall_ESG_rating, overall_esg_score, country, sector from MSCI_Table
WHERE overall_ESG_rating='CCC' AND country='US'
ORDER BY sector ASC;


-------------------------------------------------------------------------------------------

-- ascending list of distinct industry sectors in the dataset
SELECT DISTINCT(sector) from MSCI_Table
ORDER BY sector ASC;

-------------------------------------------------------------------------------------------


-- US ESG 'Leaders' 
SELECT company_name, overall_ESG_rating, overall_esg_score, sector, country from MSCI_Table
WHERE country='US' 
AND (overall_ESG_rating='AA'
OR overall_ESG_rating='AAA')
ORDER BY sector;

-- count US ESG 'Leaders' 
SELECT COUNT(company_name) from MSCI_Table
WHERE country='US' 
AND (overall_ESG_rating='AA'
OR overall_ESG_rating='AAA');



-- US ESG 'Average' Companies
SELECT company_name, overall_ESG_rating, overall_esg_score, sector, country from MSCI_Table
WHERE country='US' 
AND (overall_ESG_rating='A'
OR overall_ESG_rating='BBB'
	OR overall_ESG_rating='BB')
ORDER BY sector;

-- count US ESG 'Average' Companies
SELECT COUNT(company_name) from MSCI_Table
WHERE country='US' 
AND (overall_ESG_rating='A'
OR overall_ESG_rating='BBB'
	OR overall_ESG_rating='BB');
	
	

-- US ESG 'Laggards' 
SELECT company_name, overall_ESG_rating, overall_esg_score, sector, country from MSCI_Table
WHERE country='US' 
AND (overall_ESG_rating='B'
OR overall_ESG_rating='CCC')
ORDER BY sector;

-- count US ESG 'Laggards'
SELECT COUNT(company_name) from MSCI_Table
WHERE country='US' 
AND (overall_ESG_rating='B'
OR overall_ESG_rating='CCC');
