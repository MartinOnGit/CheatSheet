CREATE TEMPORARY TABLE tmp
(
   websiteId int(11),
   url varchar(255),
   INDEX (websiteId)
);

LOAD DATA LOCAL INFILE 'data/Single_inactive_website_url_update.csv' INTO TABLE tmp
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
(@websiteId, @url)
SET
websiteId = @websiteId,
url = @url;

update website
join tmp on tmp.websiteId = website.id
set website.url = tmp.url;
