create table amazon_rev_phrase1
as 
select marketplace, customer_id, review_id, review_body,
product_id, product_category, product_parent, product_title, star_rating, helpful_votes, 
total_votes, review_date, year, sentiment, element_at(phrase,1)['Text'] as Keyphrase1 
from amazon_reviews 
where element_at(phrase,1)['Text'] is not null;

create table amazon_rev_phrase2 
as 
select review_id, element_at(phrase,2)['Text'] as Keyphrase2 
from amazon_reviews 
where element_at(phrase,2)['Text'] is not null;

create table amazon_rev_entity1
as 
select review_id, element_at(entities,1)['Text'] as Entity1 
from amazon_reviews 
where element_at(entities,1)['Text'] is not null;

create table amazon_rev_phrases 
as 
select amazon_rev_phrase1.*,amazon_rev_phrase2.keyphrase2 
from amazon_rev_phrase1 
join amazon_rev_phrase2 on amazon_rev_phrase1.review_id=amazon_rev_phrase2.review_id;

create table amazon_rev_phrases_entity 
as 
select amazon_rev_phrases.*, amazon_rev_entity1.entity1 
from amazon_rev_phrases 
join amazon_rev_entity1 on amazon_rev_phrases.review_id=amazon_rev_entity1.review_id;

select count(*) from amazon_rev_phrases_entity;
