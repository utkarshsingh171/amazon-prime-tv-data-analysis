-- amazon prime tv data analysis 

DROP TABLE IF EXISTS netflix_data;
CREATE TABLE netflix_data (
    S_no INT,
    Name_of_show VARCHAR(250),
    Year_of_release VARCHAR(10),
    seasons VARCHAR(10),
    Languages VARCHAR(250),
    Genre VARCHAR(250),
    IMDb VARCHAR(20),
    Age_of_viewers VARCHAR(250)
);

select * from netflix_data limit 10;

-- handling missing values 
select count(*) from netflix_data
	where 
	IMDb = '' or  IMDb = null or  seasons = '';
    
select count(*) from netflix_data
	where  seasons = '';

  -- data cleaning   
update netflix_data  set IMDb = null
where IMDb in ('');
update netflix_data  set seasons = 0
where seasons in ('');
update netflix_data  set Year_of_release = null
where Year_of_release in ('');
update netflix_data  set Languages = 'N/A'
where Languages in ('');

-- datatype conversion
 alter table netflix_data
 modify IMDb float,
 modify Year_of_release int;
 
 
 -- eda
 -- count number of shows per year  
select Year_of_release,count(Name_of_show) as shows_each_years from netflix_data
group by Year_of_release
order by Year_of_release desc;


-- imdb rating distribution
select 
case
	when IMDb >= 8 then 'Excellent'
    when IMDb < 8 and IMDb >= 6 then 'average'
    else 'bad'
end as rating_category,
COUNT(*) as count
from netflix_data
group by rating_category;


-- top 10 highest rating show
select Name_of_show,IMDb from netflix_data
order by IMDb desc
 limit 10;
 
 -- genre popularity
 select genre,count(*) as popularity from netflix_data
 group by Genre 
 order by popularity desc;

-- language wise content distribution
 select Languages,count(*) as lang_popularity from netflix_data
 group by Languages 
 order by lang_popularity desc;

 -- business oriented analysis
 -- family oriented content

select Age_of_viewers,count(*) from netflix_data
 group by Age_of_viewers order by Age_of_viewers desc;

-- imdb value as seasons increases
ALTER TABLE netflix_data
MODIFY seasons INT;

select seasons,avg(IMDb) avg_imdb from netflix_data
 where seasons >= 1 
group by seasons order by seasons;

-- subquery
-- show with rating greater than abg rating 
select Name_of_show,IMDb from netflix_data
where IMDb >
(select avg(IMDb) from netflix_data)
order by IMDb desc
 
 