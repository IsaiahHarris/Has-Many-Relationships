SELECT * FROM users;

SELECT * FROM posts 
WHERE poster_id = 100;

SELECT *, users.first_name, users.last_name
FROM posts JOIN users ON (posts.poster_id = users.id)
WHERE users.id = 200;