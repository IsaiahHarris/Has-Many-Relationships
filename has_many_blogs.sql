DROP USER IF EXISTS has_many_user;
DROP DATABASE IF EXISTS has_many_blogs;

CREATE USER has_many_user WITH ENCRYPTED PASSWORD 'password';
CREATE DATABASE has_many_blogs WITH OWNER has_many_user;

DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS posts;
DROP TABLE IF EXISTS comments;

CREATE TABLE users(
  id serial NOT NULL;
  username varchar(90) NOT NULL;
  first_name varchar(90) NULL DEFAULT NULL;
  last_name varchar(90) NULL DEFAULT NULL;
  created_at timestamp with time zone DEFAULT now(); 
  updated_at timestamp with time zone DEFAULT now();
);