set echo on;

-- Aaron Cumming
-- fill_tables.sql
-- 4/27/24


INSERT INTO faculty_member (faculty_id, faculty_first_name, faculty_last_name, faculty_internal_phone_number, faculty_email) VALUES
    ('F0001', 'John', 'Doe', 1234567890, 'john.doe@example.com');

INSERT INTO faculty_member (faculty_id, faculty_first_name, faculty_last_name, faculty_internal_phone_number, faculty_email) VALUES
    ('F0002', 'Jane', 'Smith', 1234567891, 'jane.smith@example.com');

INSERT INTO faculty_member (faculty_id, faculty_first_name, faculty_last_name, faculty_internal_phone_number, faculty_email) VALUES
    ('F0003', 'Michael', 'Johnson', 1234567892, 'michael.johnson@example.com');

INSERT INTO faculty_member (faculty_id, facultry_first_name, faculty_last_name, faculty_internal_phone_number, faculty_email) VALUES
   ('F0004', 'Emily', 'Brown', 1234567893, 'emily.brown@example.com');




INSERT INTO adviser (adviser_id, position, name_of_department, room_number, faculty_member_faculty_id) VALUES
    ('A0001', 'Academic Adviser', 'Computer Science', 101, 'F0001');
    
INSERT INTO adviser (adviser_id, position, name_of_department, room_number, faculty_member_faculty_id) VALUES  
    ('A0002', 'Academic Adviser', 'Electrical Engineering', 102, 'F0002');
    
INSERT INTO adviser (adviser_id, position, name_of_department, room_number, faculty_member_faculty_id) VALUES  
    ('A0003', 'Academic Adviser', 'Psychology', 103, 'F0003');
    
INSERT INTO adviser (adviser_id, position, name_of_department, room_number, faculty_member_faculty_id) VALUES  
    ('A0004', 'Career Adviser', 'Business Administration', 104, 'F0004');
    



INSERT INTO instructor (instructor_id, faculty_member_faculty_id) VALUES
    ('IN001', 'F0001');

INSERT INTO instructor (instructor_id, faculty_member_faculty_id) VALUES
    ('IN002', 'F0002');

INSERT INTO instructor (instructor_id, faculty_member_faculty_id) VALUES
    ('IN003', 'F0003');

INSERT INTO instructor (instructor_id, faculty_member_faculty_id) VALUES
    ('IN004', 'F0004');




INSERT INTO prog_of_study (prog_id, prog_of_study) VALUES
    ('P0001', 'Computer Science');

INSERT INTO prog_of_study (prog_id, prog_of_study) VALUES
    ('P0002', 'Electrical Engineering');

INSERT INTO prog_of_study (prog_id, prog_of_study) VALUES
    ('P0003', 'Psychology');

INSERT INTO prog_of_study (prog_id, prog_of_study) VALUES
    ('P0004', 'Business Administration');




INSERT INTO student (banner_number, adviser_adviser_id, prog_of_study_prog_id, first_name, last_name, street_address, city_address, postcode_address, phone_number, email, date_of_birth, gender, category_of_student, nationality, special_needs, current_status, major, minor, additional_comments) VALUES
    ('S0001', 'A0001', 'P0001', 'Alice', 'Doe', '123 Main St', 'City 1', 12345, 1234567890, 'alice.doe@example.com', TO_DATE('2000-01-01', 'YYYY-MM-DD'), 'F', 'First-year Undergraduate', 'American', NULL, 'Placed', 'Computer Science', 'Electrical Engineering', NULL);

INSERT INTO student (banner_number, adviser_adviser_id, prog_of_study_prog_id, first_name, last_name, street_address, city_address, postcode_address, phone_number, email, date_of_birth, gender, category_of_student, nationality, special_needs, current_status, major, minor, additional_comments) VALUES
    ('S0002', 'A0002', 'P0002', 'Bob', 'Smith', '456 Elm St', 'City 2', 23456, 2345678901, 'bob.smith@example.com', TO_DATE('1999-02-02', 'YYYY-MM-DD'), 'M', 'Second-year Undergraduate', 'British', NULL, 'Placed', 'Electrical Engineering', 'Computer Science', NULL);

INSERT INTO student (banner_number, adviser_adviser_id, prog_of_study_prog_id, first_name, last_name, street_address, city_address, postcode_address, phone_number, email, date_of_birth, gender, category_of_student, nationality, special_needs, current_status, major, minor, additional_comments) VALUES
    ('S0003', 'A0003', 'P0003', 'Carol', 'Johnson', '789 Oak St', 'City 3', 34567, 3456789012, 'carol.johnson@example.com', TO_DATE('2001-05-20', 'YYYY-MM-DD'), 'F', 'First-year Undergraduate', 'Australian', NULL, 'Placed', 'Psychology', 'Business Administration', NULL);

INSERT INTO student (banner_number, adviser_adviser_id, prog_of_study_prog_id, first_name, last_name, street_address, city_address, postcode_address, phone_number, email, date_of_birth, gender, category_of_student, nationality, special_needs, current_status, major, minor, additional_comments) VALUES
    ('S0004', 'A0004', 'P0004', 'David', 'Brown', '012 Pine St', 'City 4', 45678, 4567890123, 'david.brown@example.com', TO_DATE('2002-04-25', 'YYYY-MM-DD'), 'M', 'Graduate', 'American', NULL, 'Placed', 'Business Administration', 'Psychology', NULL);

INSERT INTO student (banner_number, adviser_adviser_id, prog_of_study_prog_id, first_name, last_name, street_address, city_address, postcode_address, phone_number, email, date_of_birth, gender, category_of_student, nationality, special_needs, current_status, major, minor, additional_comments) VALUES
    ('S0005', 'A0001', 'P0003', 'Emma', 'Martinez', '345 Cedar St', 'City 5', 56789, 5678901234, 'emma.martinez@example.com', TO_DATE('2001-10-19', 'YYYY-MM-DD'), 'F', 'Fourth Undergraduate', 'German', NULL, 'Placed', 'Computer Science', 'Business Administration', NULL);




INSERT INTO course (course_number, course_title, course_year, department_name, room_number, prog_of_study_prog_id, instructor_instructor_id) VALUES
    ('CSE101', 'Introduction to Computer Science', '2023F', 'Computer Science', 101, 'P0001', 'I0001');

INSERT INTO course (course_number, course_title, course_year, department_name, room_number, prog_of_study_prog_id, instructor_instructor_id) VALUES
    ('EEG101', 'Fundamentals of Electrical Engineering', '2022F', 'Electrical Engineering', 201, 'P0002', 'I0002');

INSERT INTO course (course_number, course_title, course_year, department_name, room_number, prog_of_study_prog_id, instructor_instructor_id) VALUES
    ('PSY101', 'Introduction to Psychology', '2024F', 'Psychology', 102, 'P0003', 'I0003');

INSERT INTO course (course_number, course_title, course_year, department_name, room_number, prog_of_study_prog_id, instructor_instructor_id) VALUES
    ('BUS101', 'Business Administration Principles', '2023F', 'Business Administration', 202, 'P0004', 'I0004');

INSERT INTO course (course_number, course_title, course_year, department_name, room_number, prog_of_study_prog_id, instructor_instructor_id) VALUES
    ('CSE413', 'Databases Design', '2022S', 'Computer Science', 203, 'P0001', 'I0001');

INSERT INTO course (course_number, course_title, course_year, department_name, room_number, prog_of_study_prog_id, instructor_instructor_id) VALUES
    ('EEG332', 'Advanced Electrophysics', '2024S', 'Electrical Engineering', 204, 'P0002', 'I0002');

INSERT INTO course (course_number, course_title, course_year, department_name, room_number, prog_of_study_prog_id, instructor_instructor_id) VALUES
    ('BUS203', 'Finance Management', '2023F', 'Business Administration', 103, 'P0003', 'I0004');




INSERT INTO enrollment (enrollment_id, course_course_number, course_course_year, student_banner_number) VALUES
    ('E0001', 'CSE101', '2023F', 'S0001');

INSERT INTO enrollment (enrollment_id, course_course_number, course_course_year, student_banner_number) VALUES
    ('E0002', 'EEG101', '2022F', 'S0002');

INSERT INTO enrollment (enrollment_id, course_course_number, course_course_year, student_banner_number) VALUES
    ('E0003', 'PSY101', '2024F', 'S0003');

INSERT INTO enrollment (enrollment_id, course_course_number, course_course_year, student_banner_number) VALUES
    ('E0004', 'BUS101', '2023F', 'S0005');

INSERT INTO enrollment (enrollment_id, course_course_number, course_course_year, student_banner_number) VALUES
    ('E0005', 'CSE413', '2022S', 'S0004');

INSERT INTO enrollment (enrollment_id, course_course_number, course_course_year, student_banner_number) VALUES
    ('E0006', 'EEG332', '2024S', 'S0001');

INSERT INTO enrollment (enrollment_id, course_course_number, course_course_year, student_banner_number) VALUES
    ('E0007', 'BUS203', '2023F', 'S0001');

INSERT INTO enrollment (enrollment_id, course_course_number, course_course_year, student_banner_number) VALUES
    ('E0008', 'BUS203', '2023F', 'S0005');

INSERT INTO enrollment (enrollment_id, course_course_number, course_course_year, student_banner_number) VALUES
    ('E0009', 'CSE101', '2023F', 'S0002');

INSERT INTO enrollment (enrollment_id, course_course_number, course_course_year, student_banner_number) VALUES
    ('E0010', 'EEG101', '2022F', 'S0003');

INSERT INTO enrollment (enrollment_id, course_course_number, course_course_year, student_banner_number) VALUES
    ('E0011', 'PSY101', '2024F', 'S0005');

INSERT INTO enrollment (enrollment_id, course_course_number, course_course_year, student_banner_number) VALUES
    ('E0012', 'BUS101', '2023F', 'S0002');




INSERT INTO next_of_kin (kin_id, kin_first_name, kin_last_name, relationship, phone_number, street_address, city_address, postcode_address, student_banner_number) VALUES
    ('K0001', 'Anna', 'Doe', 'Parent', 1234567890, '123 Main St', 'City 1', 12345, 'S0001');

INSERT INTO next_of_kin (kin_id, kin_first_name, kin_last_name, relationship, phone_number, street_address, city_address, postcode_address, student_banner_number) VALUES
    ('K0002', 'Brett', 'Smith', 'Sibling', 2345678901, '456 Elm St', 'City 2', 23456, 'S0002');

INSERT INTO next_of_kin (kin_id, kin_first_name, kin_last_name, relationship, phone_number, street_address, city_address, postcode_address, student_banner_number) VALUES
    ('K0003', 'Richard', 'Johnson', 'Grandparent', 3456789012, '789 Maple St', 'City 8', 95693, 'S0003');

INSERT INTO next_of_kin (kin_id, kin_first_name, kin_last_name, relationship, phone_number, street_address, city_address, postcode_address, student_banner_number) VALUES
    ('K0004', 'John', 'Brown', 'Relative', 4567890123, '012 Pine St', 'City 4', 45678, 'S0004');

INSERT INTO next_of_kin (kin_id, kin_first_name, kin_last_name, relationship, phone_number, street_address, city_address, postcode_address, student_banner_number) VALUES
    ('K0005', 'Elizabeth', 'Martinez', 'Sibling', 5678901234, '345 Cedar St', 'City 5', 56789, 'S0005');

INSERT INTO next_of_kin (kin_id, kin_first_name, kin_last_name, relationship, phone_number, street_address, city_address, postcode_address, student_banner_number) VALUES
    ('K0006', 'Joe', 'Doe', 'Sibling', 6789012345, '123 Main St', 'City 6', 67890, 'S0001');




INSERT INTO residence_staff (staff_number, staff_first_name, staff_last_name, email, date_of_birth, gender, position, location, street_home_address, city_home_address, postcode_home_address) VALUES
    ('R0001', 'Oliver', 'Williams', 'oliver.williams@example.com', TO_DATE('1990-01-01', 'YYYY-MM-DD'), 'M', 'Residence Manager', 'Residence Office', '123 Elm St', 'City 1', 12345);

INSERT INTO residence_staff (staff_number, staff_first_name, staff_last_name, email, date_of_birth, gender, position, location, street_home_address, city_home_address, postcode_home_address) VALUES
    ('R0002', 'Sophia', 'Jones', 'sophia.jones@example.com', TO_DATE('1991-02-02', 'YYYY-MM-DD'), 'F', 'Residence Coordinator', 'Hall', '456 Oak St', 'City 2', 23456);

INSERT INTO residence_staff (staff_number, staff_first_name, staff_last_name, email, date_of_birth, gender, position, location, street_home_address, city_home_address, postcode_home_address) VALUES
    ('R0003', 'Liam', 'Brown', 'liam.brown@example.com', TO_DATE('1992-03-03', 'YYYY-MM-DD'), 'M', 'Residence Assistant', 'Hall', '789 Maple St', 'City 3', 34567);

INSERT INTO residence_staff (staff_number, staff_first_name, staff_last_name, email, date_of_birth, gender, position, location, street_home_address, city_home_address, postcode_home_address) VALUES
    ('R0004', 'Emma', 'Davis', 'emma.davis@example.com', TO_DATE('1993-04-04', 'YYYY-MM-DD'), 'F', 'Residence Assistant', 'Hall', '012 Cedar St', 'City 4', 45678);
    
    
    
    
INSERT INTO student_aprt (aprt_number, single_bedrooms_available, street_address, city_address, postcode_address) VALUES
    ('AP201', 2, '123 Main St', 'City 1', 12345);

INSERT INTO student_aprt (aprt_number, single_bedrooms_available, street_address, city_address, postcode_address) VALUES
    ('AP202', 3, '456 Elm St', 'City 2', 23456);

INSERT INTO student_aprt (aprt_number, single_bedrooms_available, street_address, city_address, postcode_address) VALUES
    ('AP203', 1, '789 Oak St', 'City 3', 34567);

INSERT INTO student_aprt (aprt_number, single_bedrooms_available, street_address, city_address, postcode_address) VALUES
    ('AP204', 2, '012 Pine St', 'City 4', 45678);

INSERT INTO student_aprt (aprt_number, single_bedrooms_available, street_address, city_address, postcode_address) VALUES
    ('AP205', 3, '345 Cedar St', 'City 5', 56789);    




INSERT INTO student_aprt_inspection (inspection_id, inspection_date, property_in_satisfactory_condition, additional_comments, student_aprt_aprt_number, residence_staff_staff_number) VALUES
    ('I0001', TO_DATE('2023-10-15', 'YYYY-MM-DD'), 'Yes', 'Good condition overall', 'AP201', 'R0001');

INSERT INTO student_aprt_inspection (inspection_id, inspection_date, property_in_satisfactory_condition, additional_comments, student_aprt_aprt_number, residence_staff_staff_number) VALUES
    ('I0002', TO_DATE('2023-10-16', 'YYYY-MM-DD'), 'No', 'Leaky faucet in the bathroom', 'AP202', 'R0002');

INSERT INTO student_aprt_inspection (inspection_id, inspection_date, property_in_satisfactory_condition, additional_comments, student_aprt_aprt_number, residence_staff_staff_number) VALUES
    ('I0003', TO_DATE('2023-10-17', 'YYYY-MM-DD'), 'Yes', 'Minor paint touch-up needed in bedroom', 'AP203', 'R0003');

INSERT INTO student_aprt_inspection (inspection_id, inspection_date, property_in_satisfactory_condition, additional_comments, student_aprt_aprt_number, residence_staff_staff_number) VALUES
    ('I0004', TO_DATE('2023-10-18', 'YYYY-MM-DD'), 'Yes', 'Cleaned refrigerator', 'AP204', 'R0004');

INSERT INTO student_aprt_inspection (inspection_id, inspection_date, property_in_satisfactory_condition, additional_comments, student_aprt_aprt_number, residence_staff_staff_number) VALUES
    ('I0005', TO_DATE('2023-10-19', 'YYYY-MM-DD'), 'No', 'Broken window in the living room', 'AP205', 'R0004');
    


    
INSERT INTO hall_of_residence (hall_id, hall_name, hall_phone_number, street_address, city_address, postcode_address, residence_staff_staff_number) VALUES
    ('H0001', 'Hall 1', 1111111111, '123 Hall St', 'City 1', 12345, 'R0001');

INSERT INTO hall_of_residence (hall_id, hall_name, hall_phone_number, street_address, city_address, postcode_address, residence_staff_staff_number) VALUES
    ('H0002', 'Hall 2', 2222222222, '456 Hall St', 'City 2', 23456, 'R0002');

INSERT INTO hall_of_residence (hall_id, hall_name, hall_phone_number, street_address, city_address, postcode_address, residence_staff_staff_number) VALUES
    ('H0003', 'Hall 3', 3333333333, '789 Hall St', 'City 3', 34567, 'R0003');

INSERT INTO hall_of_residence (hall_id, hall_name, hall_phone_number, street_address, city_address, postcode_address, residence_staff_staff_number) VALUES
    ('H0004', 'Hall 4', 4444444444, '012 Hall St', 'City 4', 45678, 'R0004');

INSERT INTO hall_of_residence (hall_id, hall_name, hall_phone_number, street_address, city_address, postcode_address, residence_staff_staff_number) VALUES
    ('H0005', 'Hall 5', 5555555555, '345 Hall St', 'City 5', 56789, 'R0005');    
    
    


INSERT INTO aprt_or_hall_room (place_number, room_number, monthly_rent_rate, student_aprt_aprt_number, hall_of_residence_hall_id) VALUES
    ('P0001', 101, 500.00, 'AP201', NULL);

INSERT INTO aprt_or_hall_room (place_number, room_number, monthly_rent_rate, student_aprt_aprt_number, hall_of_residence_hall_id) VALUES
    ('P0002', 101, 550.00, 'AP202', NULL);

INSERT INTO aprt_or_hall_room (place_number, room_number, monthly_rent_rate, student_aprt_aprt_number, hall_of_residence_hall_id) VALUES
    ('P0003', 101, 600.00, 'AP203', NULL);

INSERT INTO aprt_or_hall_room (place_number, room_number, monthly_rent_rate, student_aprt_aprt_number, hall_of_residence_hall_id) VALUES
    ('P0004', 101, 650.00, 'AP204', NULL);

INSERT INTO aprt_or_hall_room (place_number, room_number, monthly_rent_rate, student_aprt_aprt_number, hall_of_residence_hall_id) VALUES
    ('P0005', 101, 700.00, NULL, 'H0001');

INSERT INTO aprt_or_hall_room (place_number, room_number, monthly_rent_rate, student_aprt_aprt_number, hall_of_residence_hall_id) VALUES
    ('P0006', 101, 750.00, NULL, 'H0002');

INSERT INTO aprt_or_hall_room (place_number, room_number, monthly_rent_rate, student_aprt_aprt_number, hall_of_residence_hall_id) VALUES
    ('P0007', 101, 800.00, NULL, 'H0003');

INSERT INTO aprt_or_hall_room (place_number, room_number, monthly_rent_rate, student_aprt_aprt_number, hall_of_residence_hall_id) VALUES
    ('P0008', 101, 850.00, NULL, 'H0004');




INSERT INTO invoice (invoice_number, payment_due, date_invoice_paid, method_of_payment, date_first_reminder_sent, date_second_reminder_sent, lease_lease_number, student_banner_number, aprt_or_hall_room_place_number) VALUES
    ('I0001', TO_DATE('2024-04-26', 'YYYY-MM-DD'), NULL, NULL, NULL, NULL, 'L0001', 'S0001', 'P0001');

INSERT INTO invoice (invoice_number, payment_due, date_invoice_paid, method_of_payment, date_first_reminder_sent, date_second_reminder_sent, lease_lease_number, student_banner_number, aprt_or_hall_room_place_number) VALUES
    ('I0002', TO_DATE('2024-04-27', 'YYYY-MM-DD'), NULL, NULL, NULL, NULL, 'L0002', 'S0002', 'P0002');

INSERT INTO invoice (invoice_number, payment_due, date_invoice_paid, method_of_payment, date_first_reminder_sent, date_second_reminder_sent, lease_lease_number, student_banner_number, aprt_or_hall_room_place_number) VALUES
    ('I0003', TO_DATE('2024-04-28', 'YYYY-MM-DD'), NULL, NULL, NULL, NULL, 'L0003', 'S0003', 'P0003');

INSERT INTO invoice (invoice_number, payment_due, date_invoice_paid, method_of_payment, date_first_reminder_sent, date_second_reminder_sent, lease_lease_number, student_banner_number, aprt_or_hall_room_place_number) VALUES
    ('I0004', TO_DATE('2024-04-29', 'YYYY-MM-DD'), NULL, NULL, NULL, NULL, 'L0004', 'S0004', 'P0004');

INSERT INTO invoice (invoice_number, payment_due, date_invoice_paid, method_of_payment, date_first_reminder_sent, date_second_reminder_sent, lease_lease_number, student_banner_number, aprt_or_hall_room_place_number) VALUES
    ('I0005', TO_DATE('2024-04-30', 'YYYY-MM-DD'), NULL, NULL, NULL, NULL, 'L0005', 'S0005', 'P0005');




INSERT INTO lease (lease_number, lease_duration, date_stu_wants_to_enter_room, date_stu_wants_to_leave_room, student_banner_number, aprt_or_hall_room_place_number, invoice_invoice_number) VALUES
    ('L0001', '1st Semester', TO_DATE('2024-08-20', 'YYYY-MM-DD'), TO_DATE('2024-12-15', 'YYYY-MM-DD'), 'S0001', 'P0001', 'I0001');

INSERT INTO lease (lease_number, lease_duration, date_stu_wants_to_enter_room, date_stu_wants_to_leave_room, student_banner_number, aprt_or_hall_room_place_number, invoice_invoice_number) VALUES
    ('L0002', 'One Year', TO_DATE('2024-08-20', 'YYYY-MM-DD'), TO_DATE('2025-08-10', 'YYYY-MM-DD'), 'S0002', 'P0002', 'I0002');

INSERT INTO lease (lease_number, lease_duration, date_stu_wants_to_enter_room, date_stu_wants_to_leave_room, student_banner_number, aprt_or_hall_room_place_number, invoice_invoice_number) VALUES
    ('L0003', '1st Semester', TO_DATE('2024-08-20', 'YYYY-MM-DD'), TO_DATE('2025-12-15', 'YYYY-MM-DD'), 'S0003', 'P0003', 'I0003');

INSERT INTO lease (lease_number, lease_duration, date_stu_wants_to_enter_room, date_stu_wants_to_leave_room, student_banner_number, aprt_or_hall_room_place_number, invoice_invoice_number) VALUES
    ('L0004', '1st Semester', TO_DATE('2024-08-20', 'YYYY-MM-DD'), TO_DATE('2024-12-15', 'YYYY-MM-DD'), 'S0004', 'P0004', 'I0004');

INSERT INTO lease (lease_number, lease_duration, date_stu_wants_to_enter_room, date_stu_wants_to_leave_room, student_banner_number, aprt_or_hall_room_place_number, invoice_invoice_number) VALUES
    ('L0005', 'One Year', TO_DATE('2024-08-20', 'YYYY-MM-DD'), TO_DATE('2025-08-10', 'YYYY-MM-DD'), 'S0005', 'P0005', 'I0005');



