USE [70-461]
GO

CREATE TABLE imdb
(
    title varchar(100) UNIQUE NOT NULL,
    star_rating decimal(3, 1) NOT NULL,
    content_rating varchar(15) NOT NULL,
    genre varchar(20) NOT NULL,
    duration int
)

CREATE TABLE actors
(
    title varchar(100) UNIQUE NOT NULL,
    actors varchar(500) NOT NULL
)