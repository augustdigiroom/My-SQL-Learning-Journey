
-- USERS INFO

INSERT INTO users (email, password, datetime_created) VALUES ("johnsmith@gmail.com", "passwordA", "2021-01-01 01:00:00");

INSERT INTO users (email, password, datetime_created) VALUES ("juandelacruz@gmail.com", "passwordB", "2021-01-01 02:00:00");

INSERT INTO users (email, password, datetime_created) VALUES ("janesmith@gmail.com", "passwordC", "2021-01-01 03:00:00");

INSERT INTO users (email, password, datetime_created) VALUES ("mariadelacruz@gmail.com", "passwordD", "2021-01-01 04:00:00");

INSERT INTO users (email, password, datetime_created) VALUES ("johndoe@gmail.com", "passwordE", "2021-01-01 05:00:00");

-- POST INFO

INSERT INTO posts (title, content, datetime_posted, user_id) VALUES ("First Code", "Hello World!", "2021-01-02 01:00:00", 1);

INSERT INTO posts (title, content, datetime_posted, user_id) VALUES ("Second Code", "Hello Earth!", "2021-01-02 02:00:00", 1);

INSERT INTO posts (title, content, datetime_posted, user_id) VALUES ("Third Code", "Welcome to Mars!", "2021-01-02 03:00:00", 2);

INSERT INTO posts (title, content, datetime_posted, user_id) VALUES ("Fourth Code", "Bye bye solar system!", "2021-01-02 04:00:00", 4);

-- POSTS LIKES

INSERT INTO post_likes (datetime_liked, user_id, post_id) VALUES ("2021-01-01 05:00:00", 1, 1);

INSERT INTO post_likes (datetime_liked, user_id, post_id) VALUES ("2021-01-03 04:00:00", 1, 3);

INSERT INTO post_likes (datetime_liked, user_id, post_id) VALUES ("2021-01-03 03:00:00", 2, 3);

INSERT INTO post_likes (datetime_liked, user_id, post_id) VALUES ("2021-01-04 02:00:00", 2, 4);

INSERT INTO post_likes (datetime_liked, user_id, post_id) VALUES ("2021-01-09 01:00:00", 4, 3);

-- POSTS COMMENTS

INSERT INTO post_comments (content, datetime_posted, user_id, post_id) VALUES ("I wish I could visit mars.", "2021-01-01 01:00:00", 1, 1);

INSERT INTO post_comments (content, datetime_posted, user_id, post_id) VALUES ("This is what I'll say when I become an astronaut.", "2021-01-05 01:00:00", 1, 3);

-- Get all the post with an Author ID of 1. 

SELECT * FROM posts where user_id = 1;

-- Get all the user's email and datetime of creation. 

SELECT email, datetime_created FROM users;

-- Select all the post likes with Post id of 3

SELECT * FROM post_likes where post_id = 3;

-- Select all the post likes with a Post id of 4

SELECT * FROM post_likes where post_id = 4;

-- Update a post_comments content to "Hello to the people of the Earth!" where its initial content is "This is what I'll say when I become an astronaut."

UPDATE post_comments SET content = 'Hello to the people of the Earth!'
WHERE post_id = 3; 

-- Update a post_comment's content to "I wish I could visit all the planets" where its initial content is "I wish I could visit mars." by using the records ID. 

UPDATE post_comments SET content = 'I wish I could visit all the planets.'
WHERE post_id = 1; 

-- Delete the user with an email of "johndoe@gmail.com"

DELETE FROM users WHERE email = "johndoe@gmail.com";

-- Delete the post like with the id of 2. 

DELETE FROM post_likes WHERE post_id = 2;


