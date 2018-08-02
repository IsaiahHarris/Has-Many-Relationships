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
WHERE posts.created_at > "2015-01-01 00:00:00";

SELECT posts.title, posts.content, users.username 
FROM posts JOIN users ON (users.id = posts.poster_id)
WHERE users.created_at < "2015-01-01 00:00:00";

SELECT posts.post_title AS 'Post Title', *
FROM comments JOIN posts ON (comments.post_id = posts.post_id);