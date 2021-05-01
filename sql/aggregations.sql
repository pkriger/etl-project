select country, count(*)
from public.imdb_dataframe
group by country
order by count desc;

select genre, count(*)
from public.imdb_dataframe
group by genre
order by count desc;

select name,country, count(*)
from public.imdb_dataframe
group by name, country
order by count desc;
