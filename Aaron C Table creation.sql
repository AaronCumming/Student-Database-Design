set echo on;

-- Aaron Cumming
-- Table_creation.sql
-- 4/27/24


drop table adviser;

CREATE TABLE adviser (
    adviser_id                varchar2(5) 
     NOT NULL,
    position                  varchar2(128) 
     NOT NULL,
    name_of_department        varchar2(128) 
     NOT NULL,
    room_number               number(4)
     NOT NULL,
    faculty_member_faculty_id  varchar2(5)
     NOT NULL)
tablespace users
storage (
  initial 32768
  next 32768
  pctincrease 0
  minextents 1
  maxextents unlimited);







drop table aprt_or_hall_room;

CREATE TABLE aprt_or_hall_room (
    place_number                        varchar2(5)
     NOT NULL,
    room_number                        number(4) 
     NOT NULL,
    monthly_rent_rate                  number(6,2) 
     NOT NULL, 
    student_aprt_aprt_number           varchar2(5), 
    hall_of_residence_hall_id          varchar2(5)) 
tablespace users
storage (
  initial 32768
  next 32768
  pctincrease 0
  minextents 1
  maxextents unlimited);








drop table course;

CREATE TABLE course (
    course_number                   varchar2(6) 
     NOT NULL,
    course_title                    varchar2(256) 
     NOT NULL,
    course_year                     varchar2(5) 
     NOT NULL,
    department_name                 varchar2(256) 
     NOT NULL,
    room_number                     number(4) 
     NOT NULL, 
    prog_of_study_prog_id  varchar2(5),
    instructor_instructor_id        varchar2(5) 
     NOT NULL)
tablespace users
storage (
  initial 32768
  next 32768
  pctincrease 0
  minextents 1
  maxextents unlimited);







drop table enrollment;

CREATE TABLE enrollment (
    enrollment_id           varchar2(5) 
     NOT NULL,
    course_course_number    varchar2(6) 
     NOT NULL,
    course_course_year      varchar2(5)
    NOT NULL,
    student_banner_number varchar2(5) 
     NOT NULL)
tablespace users
storage (
  initial 32768
  next 32768
  pctincrease 0
  minextents 1
  maxextents unlimited);




drop table faculty_member;

CREATE TABLE faculty_member (
    faculty_id                    varchar2(5) 
     NOT NULL,
    faculty_first_name            varchar2(128) 
     NOT NULL,
    faculty_last_name             varchar2(128) 
     NOT NULL,
    faculty_internal_phone_number number(10) 
     NOT NULL,
    faculty_email                 varchar2(256) 
     NOT NULL)
tablespace users
storage (
  initial 32768
  next 32768
  pctincrease 0
  minextents 1
  maxextents unlimited);




drop table hall_of_residence;

CREATE TABLE hall_of_residence (
    hall_id                      varchar2(5) 
     NOT NULL,
    hall_name                    varchar2(128) 
     NOT NULL,
    hall_phone_number            number(10) 
     NOT NULL,
    street_address               varchar2(256) 
     NOT NULL,
    city_address                 varchar2(128) 
     NOT NULL,
    postcode_address             number(5) 
     NOT NULL,
    residence_staff_staff_number varchar2(5) 
     NOT NULL)
tablespace users
storage (
  initial 32768
  next 32768
  pctincrease 0
  minextents 1
  maxextents unlimited);





drop table instructor;

CREATE TABLE instructor (
    instructor_id             varchar2(5) 
     NOT NULL,
    faculty_member_faculty_id varchar2(5) 
     NOT NULL)
tablespace users
storage (
  initial 32768
  next 32768
  pctincrease 0
  minextents 1
  maxextents unlimited);








drop table invoice;

CREATE TABLE invoice (
    invoice_number                      varchar2(5) 
     NOT NULL,
    payment_due                         date 
     NOT NULL,
    date_invoice_paid                   date 
    ,
    method_of_payment                   varchar2(32) 
    ,
    date_first_reminder_sent            date 
    ,
    date_second_reminder_sent           date 
    ,
    lease_lease_number                varchar2(5)
     NOT NULL,
    student_banner_number             varchar2(5) 
     NOT NULL, 
    aprt_or_hall_room_place_number varchar2(5) 
     NOT NULL)
tablespace users
storage (
  initial 32768
  next 32768
  pctincrease 0
  minextents 1
  maxextents unlimited);







drop table lease;

CREATE TABLE lease (
    lease_number                        varchar2(5) 
     NOT NULL,
    lease_duration                   varchar2(32) 
     NOT NULL,
    date_stu_wants_to_enter_room   date 
    , 
    date_stu_wants_to_leave_room   date 
    ,
    student_banner_number             varchar2(5) 
     NOT NULL, 
    aprt_or_hall_room_place_number varchar2(5) 
     NOT NULL,
    invoice_invoice_number              varchar2(5) 
     NOT NULL)
tablespace users
storage (
  initial 32768
  next 32768
  pctincrease 0
  minextents 1
  maxextents unlimited);






drop table Next_of_kin;

CREATE TABLE Next_of_kin (
    kin_id                  varchar2(5) 
     NOT NULL,
    kin_first_name          varchar2(128) 
     NOT NULL,
    kin_last_name           varchar2(128) 
     NOT NULL,
    relationship            varchar(64) 
     NOT NULL,
    phone_number            number(10) 
     NOT NULL,
    street_address          varchar2(256) 
     NOT NULL,
    city_address            varchar2(128) 
     NOT NULL,
    postcode_address        number(5) 
     NOT NULL,
    student_banner_number varchar2(5) 
     NOT NULL)
tablespace users
storage (
  initial 32768
  next 32768
  pctincrease 0
  minextents 1
  maxextents unlimited);



drop table prog_of_study;

CREATE TABLE prog_of_study (
    prog_id       varchar2(5) 
     NOT NULL,
    prog_of_study  varchar2(256)
     NOT NULL)
tablespace users
storage (
  initial 32768
  next 32768
  pctincrease 0
  minextents 1
  maxextents unlimited);



drop table residence_staff;

CREATE TABLE residence_staff (
    staff_number          varchar2(5) 
     NOT NULL,
    staff_first_name      varchar2(128) 
     NOT NULL,
    staff_last_name       varchar2(128) 
     NOT NULL,
    email                 varchar2(256) 
     NOT NULL,
    date_of_birth         date 
     NOT NULL,
    gender                 varchar2(1)
     NOT NULL,
    position              varchar2(128) 
     NOT NULL,
    location               varchar2(64)
     NOT NULL,
    street_home_address   varchar2(256) 
     NOT NULL,
    city_home_address     varchar2(128) 
     NOT NULL,
    postcode_home_address number(5) 
     NOT NULL)
tablespace users
storage (
  initial 32768
  next 32768
  pctincrease 0
  minextents 1
  maxextents unlimited);









drop table student_aprt;

CREATE TABLE student_aprt (
    aprt_number          varchar2(5) 
     NOT NULL,
    single_bedrooms_available number(2) 
     NOT NULL,
    street_address            varchar2(256) 
     NOT NULL,
    city_address              varchar2(128) 
     NOT NULL,
    postcode_address          number(5) 
     NOT NULL)
tablespace users
storage (
  initial 32768
  next 32768
  pctincrease 0
  minextents 1
  maxextents unlimited);







drop table student_aprt_inspection;

CREATE TABLE student_aprt_inspection (
    inspection_id                      varchar2(5) 
     NOT NULL,
    inspection_date                    date 
     NOT NULL, 
    property_in_satisfactory_condition  varchar2(3)
     NOT NULL,
    additional_comments                varchar2(1024)
    , 
    student_aprt_aprt_number varchar2(5) 
     NOT NULL,
    residence_staff_staff_number       varchar2(5) 
     NOT NULL)
tablespace users
storage (
  initial 32768
  next 32768
  pctincrease 0
  minextents 1
  maxextents unlimited);







drop table student;

CREATE TABLE student (
    banner_number                   varchar2(5) 
     NOT NULL,
    adviser_adviser_id              varchar2(5) 
     NOT NULL, 
    prog_of_study_prog_id varchar2(5) 
     NOT NULL,
    first_name                      varchar2(128) 
     NOT NULL,
    last_name                       varchar2(128) 
     NOT NULL,
    street_address                  varchar2(256) 
     NOT NULL,
    city_address                    varchar2(128) 
     NOT NULL,
    postcode_address                number(5) 
     NOT NULL,
    phone_number                    number(10) 
     NOT NULL,
    email                           varchar2(256) 
     NOT NULL,
    date_of_birth                   date 
     NOT NULL,
    gender                          varchar2(1) 
     NOT NULL,
    category_of_student              varchar2(64)
     NOT NULL,
    nationality                     varchar2(64) 
     NOT NULL,
    special_needs                   varchar2(128),
    current_status                  varchar2(32) 
     NOT NULL,
    major                           varchar2(128) 
     NOT NULL,
    minor                           varchar2(128) 
     NOT NULL,
    additional_comments             varchar2(1024) 
)
tablespace users
storage (
  initial 32768
  next 32768
  pctincrease 0
  minextents 1
  maxextents unlimited);

