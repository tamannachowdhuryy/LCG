
----------------------- TABLE 1 CREATED --------------------

CREATE TABLE video_table_tamanna_c(
	video_id SERIAL PRIMARY KEY,
	video_title VARCHAR(255) NOT NULL,
	video_duration TIME NOT NULL,
	video_url VARCHAR(255) 
);

---------------------- INSERT TABLE 1 ----------------------

INSERT INTO video_table_tamanna_c(video_title, video_duration, video_url)
VALUES('What is SQL? [in 4 minutes for beginners]', '00:04:25' , 'https://youtu.be/27axs9dO7AE?si=MBGvqqPFtHsQSFbR');

INSERT INTO video_table_tamanna_c(video_title, video_duration, video_url)
VALUES('CREATE TABLE Statement (SQL) - Creating Database Tables', '00:02:24' , 'https://youtu.be/V8XA4JMFVDc?si=njIYHesSQT9C8SD6');

INSERT INTO video_table_tamanna_c(video_title, video_duration, video_url)
VALUES('MySQL: JOINS are easy (INNER, LEFT, RIGHT)', '00:05:03' , 'https://youtu.be/G3lJAxg1cy8?si=kSLMzWMQR7Viw2Tq');


----------------------- TABLE 2 CREATED --------------------
CREATE TABLE reviewer_tamanna_c(
	user_id SERIAL PRIMARY KEY,
	username VARCHAR(255) NOT NULL,
	video_rating INT NOT NULL,
	short_review VARCHAR(255), 
	video_id INT REFERENCES video_table_tamanna_c(video_id)
);

---------------------- INSERT TABLE 2 ----------------------

INSERT INTO reviewer_tamanna_c(username, video_rating, short_review, video_id)
VALUES('siyabongagift4168', '5' , 'Bro you just made it look easy, you the best', 3);

INSERT INTO reviewer_tamanna_c(username, video_rating, short_review, video_id)
VALUES('lovinalansana5186', '4' , 'Thank you so much. You explain it so well', 2);

---------------------- COMBINED TABLE ----------------------

SELECT  *
FROM 
	video_table_tamanna_c AS V
INNER JOIN 
	reviewer_tamanna_c AS R

ON 
	V.video_id = R.video_id

ORDER BY user_id DESC;








