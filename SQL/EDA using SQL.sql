create database insta_comments;
Use insta_comments;
CREATE TABLE comments (
    id INT AUTO_INCREMENT PRIMARY KEY,
    comment TEXT,
    clean_comment TEXT,
    sentiment VARCHAR(20),
    comment_length INT,
    word_count INT
);

# Sentiment Distribution
select sentiment,count(*) as total_comments
from comments
group by sentiment;

#Percentage Distribution
Select sentiment,
count(*)*100.0/(select count(*) from comments) as percentage 
from comments 
group by sentiment;

#Avg Comment Length by Sentiment
select sentiment,avg(comment_length)as avg_length 
from comments 
group by sentiment;

# Top Long Comments
Select comment ,comment_length 
from comments 
order by comment_length desc
limit 10;

# Keyword Search this wll help to analyze negative comments 
select *
from comments 
Where clean_comment like '%delay%'
OR clean_comment LIKE '%problem%'
 OR clean_comment LIKE '%not%';
 
 #Sentiment vs Word Count
 SELECT sentiment, AVG(word_count) AS avg_words
FROM comments
GROUP BY sentiment;


 


