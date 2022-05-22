create table actors
(
    ID        int auto_increment
        primary key,
    Firstname varchar(20) null,
    Lastname  varchar(20) null,
    constraint ID
        unique (ID)
);

create table directors
(
    ID        int auto_increment
        primary key,
    Firstname varchar(20) null,
    Lastname  varchar(20) null,
    constraint ID
        unique (ID)
);

create table movies
(
    ID           int auto_increment
        primary key,
    TITLE        varchar(20) null,
    RELEASE_YEAR int         null,
    GENRE        varchar(20) null,
    ACTORID      int         null,
    DIRECTORID   int         null,
    constraint ID
        unique (ID),
    constraint movies_ibfk_1
        foreign key (DIRECTORID) references directors (ID)
);

create table movie_actors_association
(
    MOVIEID int null,
    ACTORID int null,
    constraint movie_actors_association_ibfk_1
        foreign key (MOVIEID) references movies (ID),
    constraint movie_actors_association_ibfk_2
        foreign key (ACTORID) references actors (ID)
);

create index ACTORID
    on movie_actors_association (ACTORID);

create index MOVIEID
    on movie_actors_association (MOVIEID);

create index DIRECTORID
    on movies (DIRECTORID);


