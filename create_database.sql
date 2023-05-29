
create database course;

use course;

create table courses
(
    id_course integer primary key not null,
    name_of_course varchar (100) not null,
    modules int not null
);

create table teachers
(
    registration integer primary key not null,
    name_of_teacher varchar (100) not null,
    id_course integer,
    constraint fk_id_course_teacher foreign key (id_course)
references courses (id_course)
);

create table students
(
    rm_of_student integer primary key,
    name_of_student varchar (100) not null,
    date_of_birth date not null,
    sex varchar (1) not null,
    id_course integer,
    constraint fk_id_course_students foreign key (id_course)
references courses (id_course)
);

select * from courses;
select * from teachers;
select * from students;

drop database course;