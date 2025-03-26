set echo on;

-- Aaron Cumming
-- Queries for University Accodation Office 
-- 4/27/24

-- a
select hall_name,
       hall_phone_number,
       staff_first_name,
       staff_last_name
from hall_of_residence h
    join residence_staff r on h.RESIDENCE_STAFF_STAFF_NUMBER = r.staff_number;
    
    

-- b 
select banner_number,
       first_name,
       last_name,
       current_status,
       lease_duration,
       date_stu_wants_to_enter_room,
       aprt_or_hall_room_place_number,
       invoice_invoice_number
from student s
join lease e on e.student_banner_number = s.banner_number;




-- c
select *
from lease e
where e.lease_duration = 'One Year'
    or e.lease_duration = 'Summer Semester';
    
    
-- d
select banner_number,
       first_name,
       last_name,
       invoice_number,
       payment_due,
       date_invoice_paid,
       method_of_payment
from student s
    join invoice v on s.banner_number = v.student_banner_number
where s.banner_number = 'S0003';



-- e
select banner_number,
       first_name,
       last_name,
       invoice_number,
       payment_due,
       date_invoice_paid,
       method_of_payment
from student s
    join invoice v on s.banner_number = v.student_banner_number
where v.date_invoice_paid is null
      or v.date_invoice_paid > sysdate;



-- f
select *
from student_aprt_inspection a
    where a.property_in_satisfactory_condition = 'No';



-- g
select first_name,
       last_name,
       banner_number,
       place_number,
       room_number,
       hall_id,
       hall_name
from student s
join (
    select place_number,
           room_number,
           hall_id,
           hall_name,
           student_banner_number
    from lease e
    join (
        select place_number,
               room_number,
               hall_id,
               hall_name
        from aprt_or_hall_room aoh
        join (
            select hall_id,
                   hall_name
            from hall_of_residence h
            where h.hall_name = 'Hall 1'
        )q
        on aoh.hall_of_residence_hall_id  = q.hall_id
    )p
    on e.aprt_or_hall_room_place_number = p.place_number
) k
on s.banner_number = k.student_banner_number;
--    select place_number,
--           room_number,
--           aprt_number 
--    from aprt_or_hall_room aoh
--        join student_aprt sa on aoh.student_aprt_aprt_number  = sa.aprt_number
--    ---
--    union
--    ---
--    select place_number,
--           room_number,
--           hall_id
--    from aprt_or_hall_room aoh
--        join hall_of_residence hs on aoh.hall_of_residence_hall_id  = hs.hall_id



-- h
select *
from student s
where s.current_status = 'Waiting';



-- i
select category_of_student,
    count(*) number_in_each_category
from student
group by category_of_student;



-- j
select banner_number,
       first_name,
       last_name
from student s
---
minus
---
select banner_number,
       first_name,
       last_name
from student s
join next_of_kin n on s.banner_number = n.student_banner_number;



-- k
select adviser_id,
       faculty_id,
       faculty_first_name,
       faculty_last_name,
       faculty_internal_phone_number,
       banner_number,
       first_name,
       last_name
from faculty_member f
join (
    select adviser_id,
           faculty_member_faculty_id,
           banner_number,
           first_name,
           last_name
    from student s
        join adviser a on s.adviser_adviser_id = a.adviser_id
    where s.banner_number = 'S0002'
) q on f.faculty_id = q.faculty_member_faculty_id;




-- l
select hall_id,
       min(monthly_rent_rate) min_rent,
       max(monthly_rent_rate) max_rent,
       avg(monthly_rent_rate) avg_rent
from hall_of_residence hof
    join aprt_or_hall_room aoh on hof.hall_id = aoh.hall_of_residence_hall_id    
group by hall_id;



-- m
select hall_id,
       count(*) number_of_places
from hall_of_residence hof
    join aprt_or_hall_room aoh on hof.hall_id = aoh.hall_of_residence_hall_id    
group by hall_id;



-- n 
select age
from (select floor((months_between(sysdate,to_date(date_of_birth)) / 12)) age
      from residence_staff
)q      
where q.age > 60;