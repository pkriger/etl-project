drop table movie_title;
CREATE TABLE movie_title(
	Title_ID VARCHAR(255) primary key,
	Title VARCHAR(255),
	Year INT,
	Genre VARCHAR(255),
	Country VARCHAR(255),
	Director VARCHAR(255),
	Writer VARCHAR(255),
	Budget VARCHAR(30),
	Gross_Income VARCHAR(30)
	--,FOREIGN KEY (Title_ID) references imdb_dataframe (Title_ID)
);


CREATE TABLE names(
	Name_ID VARCHAR(30) primary key,
	Name VARCHAR(255) NOT NULL)
	--CONSTRAINT pk_names PRIMARY KEY(Name_ID)
	
CREATE TABLE title_principals(
	Title_ID VARCHAR(255) NOT NULL,
	Name_ID VARCHAR(255) NOT NULL,
	Category VARCHAR(255) NOT NULL,
	Characters VARCHAR(255) NOT NULL,
	FOREIGN KEY (Title_ID) references movie_title (Title_ID),
	FOREIGN KEY (Name_ID) references names (Name_ID)
)


Create table IMDB_merged_data(

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
	Gross_Income VARCHAR(30),
	FOREIGN KEY (Title_ID) references movie_title (Title_ID),
	FOREIGN KEY (Name_ID) references names (Name_ID));
	
	
CREATE TABLE final_table(
	rowNum int,
	imdb_id VARCHAR	PRIMARY KEY,
	Genre VARCHAR,
	Title VARCHAR,
	runtime varchar,
	rated varchar,
	FOREIGN KEY (imdb_id) references movie_title (Title_ID)
);