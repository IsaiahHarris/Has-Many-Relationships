\i scripts/blog_data.sql
SELECT * FROM users;

SELECT * FROM posts 
WHERE poster_id = 100;

SELECT *, users.first_name, users.last_name
FROM posts JOIN users ON (posts.poster_id = users.id)
WHERE users.id = 200;

SELECT *, users.username
FROM posts JOIN users ON (posts.poster_id = users.id)
WHERE users.first_name = 'Norene' AND users.last_name = 'Schmitt';

SELECT username 
FROM users JOIN posts ON (users.id = posts.poster_id)
WHERE posts.created_at > '2015-01-01 00:00:00';

SELECT posts.title, posts.content, users.username 
FROM posts JOIN users ON (users.id = posts.poster_id)
WHERE users.created_at < '2015-01-01 00:00:00';

SELECT posts.title AS "Post Title", *
FROM comments JOIN posts ON (comments.post_id = posts.id);

SELECT posts.title AS "post_title", posts.url AS "post_url", comments.body AS "comment_body", *
FROM comments JOIN posts ON (comments.post_id = posts.id)
WHERE posts.created_at < '2015-01-01 00:00:00';

SELECT *, posts.title AS "post_title", posts.url AS "post_url", comments.body AS "comment_body"
FROM comments JOIN posts ON(comments.post_id = posts.id)
WHERE posts.created_at > '2015-01-01 00:00:00';

SELECT *, posts.title AS "post_title", posts.url AS "post_url", comments.body AS "comment_body"
FROM comments JOIN posts ON (comments.post_id = posts.id)
WHERE comments.body LIKE '%USB%';

SELECT posts.title AS "post_title", users.first_name, users.last_name, comments.body AS "comment_body"
FROM posts JOIN users ON (posts.poster_id = users.id) JOIN comments ON (comments.commenter_id = users.id)
WHERE comments.body LIKE '%MATRIX%';

SELECT users.first_name, users.last_name, comments.body AS "comment_body"
FROM users JOIN comments ON (comments.commenter_id = users.id) JOIN posts ON (comments.post_id = posts.id)
WHERE posts.content LIKE '%dolorum%' AND comments.body LIKE '%SSL%';

SELECT users.first_name AS "post_author_first_name", users.last_name AS "post_author_last_name", posts.title AS "post_title", users.username AS "comment_author_username", comments.body AS "comment_body"
FROM users JOIN comments ON (comments.commenter_id = users.id) JOIN posts ON (comments.post_id = posts.id)
WHERE (comments.body LIKE '%SSL%' OR comments.body LIKE '%firewall%') AND posts.content LIKE '%nemo%';

SELECT COUNT (*)
FROM comments JOIN posts ON (comments.post_id = posts.poster_id)
WHERE posts.created_at > '2015-07-14 00:00:00-10';

SELECT COUNT (*)
FROM users JOIN comments On (comments.commenter_id = users.id)
WHERE comments.body LIKE '%programming%';