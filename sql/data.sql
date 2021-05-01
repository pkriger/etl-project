Create table IMDB_dataframe(

	Title_ID VARCHAR(255) NOT NULL,
	Title VARCHAR(255),
	Year INT,
	Country VARCHAR(255),
	Genre VARCHAR(255),
	Director VARCHAR(255),
	Writer VARCHAR(255),
	Name_ID VARCHAR(30) NOT NULL,
	Name VARCHAR(255) NOT NULL,
	Category VARCHAR(255) NOT NULL, 
	Characters VARCHAR(255) NOT NULL,
	Budget VARCHAR(30),
	Gross_Income VARCHAR(30));
	

select*
from IMDB_dataframe