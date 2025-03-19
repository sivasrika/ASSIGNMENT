
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

 --to create a relationship between two table one table will be a parent table and the oter will be a child table.
 --one to many 
 --many to many
-- many to one are the relationships
-- when ever we add a foreign key to the child table ,the key name should match with the attribute of parent table.
--bcos it should represent the primary key of parent table. 
--in foreign key we can have duplicate values. whatever value we add in foreign key it should match with parent table
--foreign key should not be null
--
Use MarchDB
--parent table
create table Skill
(
Id int identity(200,1) primary key not null,
Name varchar(50)
)
--child table related with parent skill table with foreign key
create table Trainee
(Id int identity(100,10) primary key not null,
Name varchar(50),
Skill int not null,
constraint FK_Skill foreign key(Skill) references Skill(Id)
)

--insert values in parent skill table
insert into Skill values('C#'),('C++'),('Java'),('Python'),('AI'),('Data Science')
select * from Skill
--insert values in child table , skill column value should match with id primary 
insert into Trainee values('Vishal',200),
('Virthika',201),
('vivetha',200),
('Srija',200)


select * from Skill
select * from Trainee

-- delete record with id 200 from parent table which is not fits in criteria
delete from Skill where id = 200
--update record from child table
update Skill set Name='VC++' where id =201
--we cannot delete the data used by the child table from the parent table
--first we have to delete from child and then from parent

--delete referred record from child then from parent
delete from Trainee where id = 200