create database TutorMS
--create table contact

create table Contact_tbl
(
  id int identity(101,1) primary key,
  cname varchar(50)not null,
  cemail varchar(50) not null,
  csubject varchar(50) not null,
  cmessage varchar(max) not null
)

--create store procedure for insert contact table

create procedure spContact_Insert
@name varchar(50),
@email varchar(50),
@subject varchar(50),
@message varchar(max)
as
begin
     insert into Contact_tbl values(@name , @email , @subject , @message);
end

select * from Contact_tbl


create table adminlogin
(
  id int identity(1,1) primary key,
  username varchar(50) not null,
  [password] varchar (50) not null, 
)

insert into adminlogin values('admin','admin')

select * from adminlogin

create table student
(
  student_id int identity(101,1) primary key,
  [name] varchar(50) not null,
  fname varchar(50) not null,
  surname varchar(50) not null,
  gender varchar(30) not null,
  age tinyint  not null,
  country varchar(50) not null,
  city varchar(50) not null,
  [address] varchar(50) not null,
  [standard] varchar(50) not null,
  goingto varchar(50) not null,
  [subject] varchar(50) not null,
  contact varchar(50) not null,
  tutiontypeform varchar(50) not null,
  tutorqualification varchar(50) not null,
  username varchar(50) not null,
  [password] varchar(50)
)

alter table student add unique(username)

alter table student add  emailid varchar(50) unique

select * from student

---Creating Store Procedure for insert student information data into tables

alter  procedure SPstudentdatainsert
 @sname varchar(50),
 @fname varchar(50),
 @surname varchar(50) ,
 @gender varchar(30) ,
 @age tinyint  ,
 @country varchar(50) ,
 @city varchar(50),
 @saddress varchar(50) ,
 @sstandard varchar(50),
 @goingto varchar(50) ,
 @ssubject varchar(50) ,
 @contact varchar(50) ,
 @tutiontypeform varchar(50) ,
 @tutorqualification varchar(50) ,
 @username varchar(50) ,
 @spassword varchar(50),
 @emailid varchar(50)
 as 
 begin
 insert into student values (@sname , @fname , @surname ,  @gender , @age , @country , @city , @saddress , @sstandard , @goingto , @ssubject , @contact ,  @tutiontypeform , @tutorqualification , @username , @spassword,@emailid);
 end

select * from student 


 select * from student

 create table studentotp
 (
  otpid int identity(101,1) primary key,
  otp varchar(10) unique,
  studentid int foreign key references student(student_id)
 )


 
 select * from student

 select * from studentotp

 select * from student where username = 'ashish' and emailid ='ashishdeewan@gmail.com' 

 select  s.student_id, stp.otpid  ,stp.otp , s.emailid from studentotp  stp inner join student s on stp.studentid = s.student_id  


 create table studentforgepass
 (
    otpid int identity(1,1) primary key,
	emailid varchar(100) unique,
	emailotp varchar(100) unique
 )

 select * from studentforgepass

 select * from tutortable

 select * from student
