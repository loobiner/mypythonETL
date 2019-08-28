## Data Cleanup & Analysis

Once you have identified your datasets, perform ETL on the data. Make sure to plan and document the following:
* The sources of data that you will extract from.
	- Data on national rates of Autism and of MMR vaccinations from the CDC for years from 2000 - 2017
	- https://www.cdc.gov/vaccines/imz-managers/coverage/childvaxview/data-reports/mmr/index.html
	- https://www.cdc.gov/ncbddd/autism/data/index.html#data

* The type of transformation needed for this data (cleaning, joining, filtering, aggregating, etc).
	- convert original .xls files to .csv files
	- remove unneccessary columns (there were a lot)
	- remove unnecessary rows (non-state rows, duplicated state data
	- rename columns to better reflect the data they contain
	- add column to autism dataset that gives us the combined mean rather than broken down by binary gender
	- join both tables to what is essentially a translation table of state name and abbreviation
	- use state abbreviation as our key to join on
	- only look at data for states that are present in both datasets

* The type of final production database to load the data into (relational or non-relational).
	- Relational Postgres database
* The final tables or collections that will be used in the production database.
	- mmr table
	- autism table
	- state name and abbreviation table (to translate and allow for joining)
	- Note: We tried a few different versions of each dataframe (which you'll see in our Jupyter notebook) before settling on the
		final versions of each dataset.
	- Additional Note: we fought with the autism table quite a bit, before deciding to make a new copy of it and start fresh.
You will be required to submit a final technical report with the above information and steps required to reproduce your ETL process.

## Project Report

At the end of the week, your team will submit a Final Report that describes the following:
* **E**xtract: your original data sources and how the data was formatted (CSV, JSON, pgAdmin 4, etc).
* **T**ransform: what data cleaning or transformation was required.
* **L**oad: the final database, tables/collections, and why this was chosen.
Please upload the report to Github and submit a link to Bootcampspot.

## Caveats
We know that comparing these datasets has some inherent issues. Namely, we are comparing rates without knowing the n (the hard numbers)
for each rate.  

