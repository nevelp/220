create table class
(
    id            int         not null
        primary key,
    class_name    varchar(10) null,
    class_subject varchar(10) null
);

create table grade
(
    id        int     not null
        primary key,
    grade_num tinyint null
);

create table student_address
(
    id      int         not null
        primary key,
    address varchar(40) null,
    town    varchar(15) null,
    zip     smallint    null
);

create table student
(
    id         int         not null
        primary key,
    firstname  varchar(15) null,
    lastname   varchar(15) null,
    grade_id   int         null,
    address_id int         null,
    constraint student_ibfk_1
        foreign key (address_id) references student_address (id),
    constraint student_ibfk_2
        foreign key (grade_id) references grade (id)
);

create table class_roster
(
    id         int null,
    class_id   int null,
    student_id int null,
    constraint class_roster_ibfk_1
        foreign key (class_id) references class (id),
    constraint class_roster_ibfk_2
        foreign key (student_id) references student (id)
);

create index class_id
    on class_roster (class_id);

create index student_id
    on class_roster (student_id);

create index address_id
    on student (address_id);

create index grade_id
    on student (grade_id);


