
-- create a table with one primary key
Use MarchDB
create table Trainee
(
Id int identity(100,1)primary key not null,
name varchar(50),
skill varchar(50)
)

-- insert  values in to trainee
 insert into Trainee values('alice','sql')
 select * from Trainee
 delete from Trainee Where Id=103

 drop table Trainee

 --to have multiple primary keys
 Use MarchDB
 create table traineeskills
 (
 TraineeID int identity(100,1) not null,
 Trainee_Name varchar(50),
 skillID int not null,
 Trainee_skill varchar(50) not null,
 constraint PK_TSID primary key(TraineeID,skillID,Trainee_skill)
 )