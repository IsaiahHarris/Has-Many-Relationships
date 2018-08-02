DROP USER IF EXISTS has_many_user;
DROP DATABASE IF EXISTS has_many_blogs;

CREATE USER has_many_user WITH ENCRYPTED PASSWORD 'password';
CREATE DATABASE has_many_blogs WITH OWNER has_many_user;

DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS posts;
DROP TABLE IF EXISTS comments;
\c has_many_blogs;

CREATE TABLE users(
  id serial NOT NULL PRIMARY KEY,
  username varchar(90) NOT NULL,
  first_name varchar(90) NULL DEFAULT NULL,
  last_name varchar(90) NULL DEFAULT NULL,
  created_at timestamp with time zone NOT NULL DEFAULT now(),
  updated_at timestamp with time zone NOT NULL DEFAULT now()
);

CREATE TABLE posts(
  id serial NOT NULL PRIMARY KEY,
  title varchar(180) NULL DEFAULT NULL,
  url varchar(510) NULL DEFAULT NULL,
  content text NULL DEFAULT NULL,
  created_at timestamp with time zone NOT NULL DEFAULT now(),
  updated_at timestamp with time zone NOT NULL DEFAULT now(),
  poster_id serial NOT NULL REFERENCES
)