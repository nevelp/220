create table class
(
    ID         int auto_increment
        primary key,
    class_type varchar(20) null,
    constraint ID
        unique (ID)
);

create table grade
(
    ID        int auto_increment
        primary key,
    grade_num int null,
    constraint ID
        unique (ID)
);

create table student
(
    ID        int auto_increment
        primary key,
    Firstname varchar(20) null,
    Lastname  varchar(20) null,
    gradeId   int         null,
    constraint ID
        unique (ID),
    constraint student_ibfk_1
        foreign key (gradeId) references grade (ID)
);

create index gradeId
    on student (gradeId);

create table student_address
(
    ID        int auto_increment
        primary key,
    num       int         null,
    street    varchar(20) null,
    zipcode   int         null,
    studentId int         null,
    constraint ID
        unique (ID),
    constraint student_address_ibfk_1
        foreign key (studentId) references student (ID)
);

create index studentId
    on student_address (studentId);

create table student_class_association
(
    studentId int null,
    classId   int null,
    constraint student_class_association_ibfk_1
        foreign key (studentId) references student (ID),
    constraint student_class_association_ibfk_2
        foreign key (classId) references class (ID)
);

create index classId
    on student_class_association (classId);

create index studentId
    on student_class_association (studentId);


