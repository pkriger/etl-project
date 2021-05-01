# etl-project

## Movie Database ETL 
For our project we made a relational movie database. 


## Data Sources 
1. kaggle datasets 
    1. IMDb movies extensive dataset: https://www.kaggle.com/stefanoleone992/imdb-extensive-dataset 
    2. IMDB Movies Dataset-- Top 1000 Movies by IMDB Rating: https://www.kaggle.com/harshitshankhdhar/imdb-dataset-of-top-1000-movies-and-tv-shows 
2. OMDB API calls 


## The Process: ETL

### Extract 
We pulled data from the data soucres listed above. We first pulled the data from the first kaggle dataset. We cleaned this dataset (this should be in Transform, I know) and uploaded it to github. From there, we used the IMDb title id of each movie to make OMDB API calls and gather additional data that was not listed in the kaggle dataset, including movie runtime, rating, and critic scores. To supplement the first kaggle dataset and include more recent and popular films, we imported the csv file of the second kaggle dataset and made OMDB api calls using the movie titles listed. 


### Transform 
Cleaning the datasets was a large portion of the work in this project. First, we had to determine which columns of the csv files were necessary, delete the ones that were not needed, rename the ones that were needed, and inspect the remaining columns. After the inital cleaning of the csv files, we uploaded the cleaned files into jupyter notebook (this is technically part of the extraction). Once in jupyter notebook, we used pandas to inspect and clean the data further. For instance, we looked at the values for each column and if they were mostly null, we deleted that column as well. 


### Load 
After the second stage of cleaning in pandas, we exported the files back to a csv and uploaded the data in Postgress. That is, we created a new database and within that new postgress database created empty tables that corresponded to our csv files. Then we imported the csv files into our postgress tables. Once our data was in postgress, we joined the tables on the imdb title id and performed aggregations (this could be included in the transform section, but since it was already loaded into the database, I included it in this section).



### Side notes: 
We decided on using a relational database because it provides inherent structure that we thought would be helpful. 

We ran into some issues with the API calls. For one, one member had to pay a small fee to become a patreon for omdb because I surpassed the amount of free api calls. Secondly, we ran into issues with the length of time it took to make all these API calls. Because one member (me, Gabrielle) dropped the ball and forgot to export the dataframe to a csv, she had to do run her code in pandas the day of and dedicate an hour and a half to making the api calls again. Fortunately, while the code was taking its sweet time to run, she was able to write this README. 
