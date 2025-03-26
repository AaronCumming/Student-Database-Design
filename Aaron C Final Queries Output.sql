SQL> 
SQL> -- Aaron Cumming
SQL> -- Queries for University Accodation Office 
SQL> -- 4/27/24
SQL> 
SQL> -- a
SQL> select hall_name,
  2         hall_phone_number,
  3         staff_first_name,
  4         staff_last_name
  5  from hall_of_residence h
  6      join residence_staff r on h.RESIDENCE_STAFF_STAFF_NUMBER = r.staff_number;

HALL_NAME                                                                                                                        HALL_PHONE_NUMBER STAFF_FIRST_NAME                                                                                                                 STAFF_LAST_NAME                                                                                                                 
-------------------------------------------------------------------------------------------------------------------------------- ----------------- -------------------------------------------------------------------------------------------------------------------------------- --------------------------------------------------------------------------------------------------------------------------------
Hall 1                                                                                                                                  1111111111 Oliver                                                                                                                           Williams                                                                                                                        
Hall 2                                                                                                                                  2222222222 Sophia                                                                                                                           Jones                                                                                                                           
Hall 3                                                                                                                                  3333333333 Liam                                                                                                                             Brown                                                                                                                           
Hall 4                                                                                                                                  4444444444 Emma                                                                                                                             Davis                                                                                                                           

SQL> 
SQL> 
SQL> 
SQL> -- b 
SQL> select banner_number,
  2         first_name,
  3         last_name,
  4         current_status,
  5         lease_duration,
  6         date_stu_wants_to_enter_room,
  7         aprt_or_hall_room_place_number,
  8         invoice_invoice_number
  9  from student s
 10  join lease e on e.student_banner_number = s.banner_number;

BANNE FIRST_NAME                                                                                                                       LAST_NAME                                                                                                                        CURRENT_STATUS                   LEASE_DURATION                   DATE_STU_ APRT_ INVOI
----- -------------------------------------------------------------------------------------------------------------------------------- -------------------------------------------------------------------------------------------------------------------------------- -------------------------------- -------------------------------- --------- ----- -----
S0001 Alice                                                                                                                            Doe                                                                                                                              Placed                           1st Semester                     20-AUG-24 P0001 I0001
S0002 Bob                                                                                                                              Smith                                                                                                                            Placed                           One Year                         20-AUG-24 P0002 I0002
S0003 Carol                                                                                                                            Johnson                                                                                                                          Placed                           1st Semester                     20-AUG-24 P0003 I0003
S0004 David                                                                                                                            Brown                                                                                                                            Placed                           1st Semester                     20-AUG-24 P0004 I0004
S0005 Emma                                                                                                                             Martinez                                                                                                                         Placed                           One Year                         20-AUG-24 P0005 I0005

SQL> 
SQL> 
SQL> 
SQL> 
SQL> -- c
SQL> select *
  2  from lease e
  3  where e.lease_duration = 'One Year'
  4      or e.lease_duration = 'Summer Semester';

LEASE LEASE_DURATION                   DATE_STU_ DATE_STU_ STUDE APRT_ INVOI
----- -------------------------------- --------- --------- ----- ----- -----
L0002 One Year                         20-AUG-24 10-AUG-25 S0002 P0002 I0002
L0005 One Year                         20-AUG-24 10-AUG-25 S0005 P0005 I0005

SQL> 
SQL> 
SQL> -- d
SQL> select banner_number,
  2         first_name,
  3         last_name,
  4         invoice_number,
  5         payment_due,
  6         date_invoice_paid,
  7         method_of_payment
  8  from student s
  9      join invoice v on s.banner_number = v.student_banner_number
 10  where s.banner_number = 'S0003';

BANNE FIRST_NAME                                                                                                                       LAST_NAME                                                                                                                        INVOI PAYMENT_D DATE_INVO METHOD_OF_PAYMENT               
----- -------------------------------------------------------------------------------------------------------------------------------- -------------------------------------------------------------------------------------------------------------------------------- ----- --------- --------- --------------------------------
S0003 Carol                                                                                                                            Johnson                                                                                                                          I0003 28-APR-24                                           

SQL> 
SQL> 
SQL> 
SQL> -- e
SQL> select banner_number,
  2         first_name,
  3         last_name,
  4         invoice_number,
  5         payment_due,
  6         date_invoice_paid,
  7         method_of_payment
  8  from student s
  9      join invoice v on s.banner_number = v.student_banner_number
 10  where v.date_invoice_paid is null
 11        or v.date_invoice_paid > sysdate;

BANNE FIRST_NAME                                                                                                                       LAST_NAME                                                                                                                        INVOI PAYMENT_D DATE_INVO METHOD_OF_PAYMENT               
----- -------------------------------------------------------------------------------------------------------------------------------- -------------------------------------------------------------------------------------------------------------------------------- ----- --------- --------- --------------------------------
S0001 Alice                                                                                                                            Doe                                                                                                                              I0001 26-APR-24                                           
S0002 Bob                                                                                                                              Smith                                                                                                                            I0002 27-APR-24                                           
S0003 Carol                                                                                                                            Johnson                                                                                                                          I0003 28-APR-24                                           
S0004 David                                                                                                                            Brown                                                                                                                            I0004 29-APR-24                                           
S0005 Emma                                                                                                                             Martinez                                                                                                                         I0005 30-APR-24                                           

SQL> 
SQL> 
SQL> 
SQL> -- f
SQL> select *
  2  from student_aprt_inspection a
  3      where a.property_in_satisfactory_condition = 'No';

INSPE INSPECTIO PRO ADDITIONAL_COMMENTS                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              STUDE RESID
----- --------- --- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- ----- -----
I0002 16-OCT-23 No  Leaky faucet in the bathroom                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     AP202 R0002
I0005 19-OCT-23 No  Broken window in the living room                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 AP205 R0004

SQL> 
SQL> 
SQL> 
SQL> -- g
SQL> select first_name,
  2         last_name,
  3         banner_number,
  4         place_number,
  5         room_number,
  6         hall_id,
  7         hall_name
  8  from student s
  9  join (
 10      select place_number,
 11             room_number,
 12             hall_id,
 13             hall_name,
 14             student_banner_number
 15      from lease e
 16      join (
 17          select place_number,
 18                 room_number,
 19                 hall_id,
 20                 hall_name
 21          from aprt_or_hall_room aoh
 22          join (
 23              select hall_id,
 24                     hall_name
 25              from hall_of_residence h
 26              where h.hall_name = 'Hall 1'
 27          )q
 28          on aoh.hall_of_residence_hall_id  = q.hall_id
 29      )p
 30      on e.aprt_or_hall_room_place_number = p.place_number
 31  ) k
 32  on s.banner_number = k.student_banner_number;

FIRST_NAME                                                                                                                       LAST_NAME                                                                                                                        BANNE PLACE ROOM_NUMBER HALL_ HALL_NAME                                                                                                                       
-------------------------------------------------------------------------------------------------------------------------------- -------------------------------------------------------------------------------------------------------------------------------- ----- ----- ----------- ----- --------------------------------------------------------------------------------------------------------------------------------
Emma                                                                                                                             Martinez                                                                                                                         S0005 P0005         101 H0001 Hall 1                                                                                                                          

SQL> --    select place_number,
SQL> --           room_number,
SQL> --           aprt_number 
SQL> --    from aprt_or_hall_room aoh
SQL> --        join student_aprt sa on aoh.student_aprt_aprt_number  = sa.aprt_number
SQL> --    ---
SQL> --    union
SQL> --    ---
SQL> --    select place_number,
SQL> --           room_number,
SQL> --           hall_id
SQL> --    from aprt_or_hall_room aoh
SQL> --        join hall_of_residence hs on aoh.hall_of_residence_hall_id  = hs.hall_id
SQL> 
SQL> 
SQL> 
SQL> -- h
SQL> select *
  2  from student s
  3  where s.current_status = 'Waiting';
no rows selected
SQL> 
SQL> 
SQL> 
SQL> -- i
SQL> select category_of_student,
  2      count(*) number_in_each_category
  3  from student
  4  group by category_of_student;

CATEGORY_OF_STUDENT                                              NUMBER_IN_EACH_CATEGORY
---------------------------------------------------------------- -----------------------
First-year Undergraduate                                                               2
Fourth Undergraduate                                                                   1
Graduate                                                                               1
Second-year Undergraduate                                                              1

SQL> 
SQL> 
SQL> 
SQL> -- j
SQL> select banner_number,
  2         first_name,
  3         last_name
  4  from student s
  5  ---
  6  minus
  7  ---
  8  select banner_number,
  9         first_name,
 10         last_name
 11  from student s
 12  join next_of_kin n on s.banner_number = n.student_banner_number;
no rows selected
SQL> 
SQL> 
SQL> 
SQL> -- k
SQL> select adviser_id,
  2         faculty_id,
  3         faculty_first_name,
  4         faculty_last_name,
  5         faculty_internal_phone_number,
  6         banner_number,
  7         first_name,
  8         last_name
  9  from faculty_member f
 10  join (
 11      select adviser_id,
 12             faculty_member_faculty_id,
 13             banner_number,
 14             first_name,
 15             last_name
 16      from student s
 17          join adviser a on s.adviser_adviser_id = a.adviser_id
 18      where s.banner_number = 'S0002'
 19  ) q on f.faculty_id = q.faculty_member_faculty_id;

ADVIS FACUL FACULTY_FIRST_NAME                                                                                                               FACULTY_LAST_NAME                                                                                                                FACULTY_INTERNAL_PHONE_NUMBER BANNE FIRST_NAME                                                                                                                       LAST_NAME                                                                                                                       
----- ----- -------------------------------------------------------------------------------------------------------------------------------- -------------------------------------------------------------------------------------------------------------------------------- ----------------------------- ----- -------------------------------------------------------------------------------------------------------------------------------- --------------------------------------------------------------------------------------------------------------------------------
A0002 F0002 Jane                                                                                                                             Smith                                                                                                                                               1234567891 S0002 Bob                                                                                                                              Smith                                                                                                                           

SQL> 
SQL> 
SQL> 
SQL> 
SQL> -- l
SQL> select hall_id,
  2         min(monthly_rent_rate) min_rent,
  3         max(monthly_rent_rate) max_rent,
  4         avg(monthly_rent_rate) avg_rent
  5  from hall_of_residence hof
  6      join aprt_or_hall_room aoh on hof.hall_id = aoh.hall_of_residence_hall_id    
  7  group by hall_id;

HALL_   MIN_RENT   MAX_RENT   AVG_RENT
----- ---------- ---------- ----------
H0004        850        850        850
H0002        750        750        750
H0001        700        700        700
H0003        800        800        800

SQL> 
SQL> 
SQL> 
SQL> -- m
SQL> select hall_id,
  2         count(*) number_of_places
  3  from hall_of_residence hof
  4      join aprt_or_hall_room aoh on hof.hall_id = aoh.hall_of_residence_hall_id    
  5  group by hall_id;

HALL_ NUMBER_OF_PLACES
----- ----------------
H0004                1
H0002                1
H0001                1
H0003                1

SQL> 
SQL> 
SQL> 
SQL> -- n 
SQL> select age
  2  from (select floor((months_between(sysdate,to_date(date_of_birth)) / 12)) age
  3        from residence_staff
  4  )q      
  5  where q.age > 60;
no rows selected
