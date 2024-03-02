-- Системаи бақайдгирии донишҷӯён

-- Шумо системаи бақайдгирии донишҷӯёнро дар муассисаҳои таълимӣ таҳия карда истодаед. Вазифаи шумо амалӣ кардани функсия барои кор бо маълумоти корбар, бо истифода аз Dapper барои дастрасӣ ба пойгоҳи додаҳо мебошад. Шумо ҷадвалҳои асосии "Students", "Courses" ва "Groups" доред, ки маълумотро дар бораи донишҷӯён, курсҳо ва гурӯҳҳо нигоҳ медоранд.

-- Вазифаи шумо:
-- 1. Барои ин ҷадвалҳо усулҳои CRUD нависед.
-- 2. Барои гирифтани рӯйхати ҳамаи донишҷӯёни гурӯҳ дархост нависед.
-- 3. Барои гирифтани рӯйхати ҳамаи гурӯҳҳо бо донишҷӯён дархост нависед.
-- 4. Барои гирифтани рӯйхати ҳамаи курсҳо бо гурӯҳҳояшон дархост нависед.
-- 5. Дархост барои гирифтани рӯйхати донишҷӯён бо рўйхати гурӯҳҳое, ки ӯ дар онҳо таҳсил кардааст, нависед.
-- 6. Усули аз базаи маълумот хориҷ кардани донишҷӯро бо назардошти сабтҳои курсии ӯ нависед.

-- Боварӣ ҳосил кунед, ки иҷрои коди шумо истисноҳо ба монанди донишҷӯёни мавҷуднабуда ё хатогиҳои дархостро иҷозат медиҳад.

-- Система учета студентов

-- Вы разрабатываете систему учета студентов для учебного заведения. Ваша задача - реализовать функциональность для работы с данными о студентах, используя Dapper для доступа к базе данных. У вас есть главные таблицы "Students", "Courses" и "Groups", которые хранят информацию о студентах, курсах и группах.

-- Ваша задача:
-- 1. Напишите методы CRUD для этих таблиц.
-- 2. Напишите запрос, чтобы получить список всех учащихся в группе.
-- 3. Напишите запрос на получение списка всех групп с учениками.
-- 4. Напишите запрос на получение списка всех курсов с группами.
-- 5. Написать просьбу получить список студентов со списками групп, в которых он учился.
-- 6. Написать метод удаления студента из базы данных с учетом удаления его курсовых записей.

-- Убедитесь, что ваш код обрабатывает возможные исключительные ситуации, такие как отсутствие студентов или ошибки при выполнении запросов.

-- Student Registration System

-- You are developing a system for registering students in educational institutions. Your task is to implement functionality for working with user data, using Dapper to access the database. You have main tables "Students", "Courses" and "Groups" that store data about students, courses and groups.

-- Your task:
-- 1. Write CRUD methods for these tables.
-- 2. Write a query to get a list of all students in the group.
-- 3. Write a request to receive a list for all groups with students.
-- 4. Write a request to receive a list of all courses with groups.
-- 5. Write a request to receive a list of students with lists of groups in which he studied.
-- 6. Write a method for deleting a student from the database, taking into account the deletion of his course records.

-- Make sure that your code execution allows for exceptions such as missing students or query errors.


create table Students
(
	Id serial primary key,
	FullName varchar,
	Age int,
	GroupId int references Groups(Id)
);
select * from Students

insert into Students (FullName, Age, GroupId) values ('Bobette Allder', 60, 7);
insert into Students (FullName, Age, GroupId) values ('Timothea Simonich', 30, 6);
insert into Students (FullName, Age, GroupId) values ('Claudette Yarnell', 55, 5);
insert into Students (FullName, Age, GroupId) values ('Yelena Saiens', 8, 9);
insert into Students (FullName, Age, GroupId) values ('Kat Bavester', 39, 3);
insert into Students (FullName, Age, GroupId) values ('Chaddy Teape', 48, 6);
insert into Students (FullName, Age, GroupId) values ('Kiley Kalvin', 14, 4);
insert into Students (FullName, Age, GroupId) values ('Adina Gamett', 34, 7);
insert into Students (FullName, Age, GroupId) values ('Dani Baptie', 13, 7);
insert into Students (FullName, Age, GroupId) values ('Hermie Feaviour', 59, 5);
insert into Students (FullName, Age, GroupId) values ('Anthea Torvey', 22, 5);
insert into Students (FullName, Age, GroupId) values ('Dina Evelyn', 55, 9);
insert into Students (FullName, Age, GroupId) values ('Charmion Ecclestone', 54, 5);
insert into Students (FullName, Age, GroupId) values ('Angeline Blinman', 20, 5);
insert into Students (FullName, Age, GroupId) values ('Elias Giovanetti', 24, 5);
insert into Students (FullName, Age, GroupId) values ('Rori Skitral', 41, 6);
insert into Students (FullName, Age, GroupId) values ('Petunia Colloff', 59, 8);
insert into Students (FullName, Age, GroupId) values ('Darin Caillou', 37, 3);
insert into Students (FullName, Age, GroupId) values ('Peta Konneke', 15, 6);
insert into Students (FullName, Age, GroupId) values ('Vidovic Cleyburn', 18, 7);
insert into Students (FullName, Age, GroupId) values ('Harli Hattigan', 55, 8);
insert into Students (FullName, Age, GroupId) values ('Lucienne Gibbin', 41, 8);
insert into Students (FullName, Age, GroupId) values ('Allegra Iacovozzo', 51, 1);
insert into Students (FullName, Age, GroupId) values ('Artemas Deverson', 13, 9);
insert into Students (FullName, Age, GroupId) values ('Joanna Fouracres', 24, 10);
insert into Students (FullName, Age, GroupId) values ('Brandyn Dederick', 29, 7);
insert into Students (FullName, Age, GroupId) values ('Colene Croix', 22, 7);
insert into Students (FullName, Age, GroupId) values ('Jacquetta Tottie', 16, 9);
insert into Students (FullName, Age, GroupId) values ('Mariette Tillman', 46, 1);
insert into Students (FullName, Age, GroupId) values ('Alfie Healks', 47, 6);
insert into Students (FullName, Age, GroupId) values ('Caye Kauscher', 60, 1);
insert into Students (FullName, Age, GroupId) values ('Spencer Dobrovolny', 31, 5);
insert into Students (FullName, Age, GroupId) values ('Happy Rumsby', 30, 9);
insert into Students (FullName, Age, GroupId) values ('Curcio Elvy', 57, 5);
insert into Students (FullName, Age, GroupId) values ('Massimiliano Labb', 15, 5);
insert into Students (FullName, Age, GroupId) values ('Hermie Gilloran', 26, 4);
insert into Students (FullName, Age, GroupId) values ('Sophronia Lengthorn', 48, 8);
insert into Students (FullName, Age, GroupId) values ('Dorri Cullnean', 23, 7);
insert into Students (FullName, Age, GroupId) values ('Hollie Noonan', 36, 3);
insert into Students (FullName, Age, GroupId) values ('Ronnica Putterill', 27, 2);
insert into Students (FullName, Age, GroupId) values ('Morna Ros', 20, 10);
insert into Students (FullName, Age, GroupId) values ('Tito Eastbury', 29, 2);
insert into Students (FullName, Age, GroupId) values ('Marcelia Georgeson', 50, 1);
insert into Students (FullName, Age, GroupId) values ('Ava Aspital', 37, 2);
insert into Students (FullName, Age, GroupId) values ('Lalo Starton', 12, 1);
insert into Students (FullName, Age, GroupId) values ('Dalila Prescott', 41, 6);
insert into Students (FullName, Age, GroupId) values ('Wynn Tregunnah', 56, 4);
insert into Students (FullName, Age, GroupId) values ('Carmencita Mebius', 54, 2);
insert into Students (FullName, Age, GroupId) values ('Traver Matthis', 15, 1);
insert into Students (FullName, Age, GroupId) values ('Emmalyn Levin', 58, 1);
insert into Students (FullName, Age, GroupId) values ('Janos Kennaway', 25, 3);
insert into Students (FullName, Age, GroupId) values ('Gerrie Oldham', 21, 5);
insert into Students (FullName, Age, GroupId) values ('Sullivan Fraine', 33, 1);
insert into Students (FullName, Age, GroupId) values ('Lori Chatell', 12, 4);
insert into Students (FullName, Age, GroupId) values ('Enrichetta Geelan', 33, 7);
insert into Students (FullName, Age, GroupId) values ('Palm Peploe', 44, 8);
insert into Students (FullName, Age, GroupId) values ('Klarrisa Staunton', 25, 3);
insert into Students (FullName, Age, GroupId) values ('Celle Hammor', 42, 9);
insert into Students (FullName, Age, GroupId) values ('Hadley Klementz', 55, 8);
insert into Students (FullName, Age, GroupId) values ('Evita Antoniottii', 48, 9);
insert into Students (FullName, Age, GroupId) values ('Hall Stieger', 37, 8);
insert into Students (FullName, Age, GroupId) values ('Leupold Akester', 7, 3);
insert into Students (FullName, Age, GroupId) values ('Perla Boog', 42, 4);
insert into Students (FullName, Age, GroupId) values ('Krista Saggs', 35, 2);
insert into Students (FullName, Age, GroupId) values ('Orelle Matusovsky', 59, 4);
insert into Students (FullName, Age, GroupId) values ('Pattie Frusher', 12, 9);
insert into Students (FullName, Age, GroupId) values ('Ansel McGourty', 47, 4);
insert into Students (FullName, Age, GroupId) values ('Aubrey Benediktovich', 28, 5);
insert into Students (FullName, Age, GroupId) values ('Boyd Stirman', 32, 5);
insert into Students (FullName, Age, GroupId) values ('Robinett Riglar', 11, 6);
insert into Students (FullName, Age, GroupId) values ('Alicea Crowdson', 14, 6);
insert into Students (FullName, Age, GroupId) values ('Igor Stockey', 27, 10);
insert into Students (FullName, Age, GroupId) values ('Leeland Itzkowicz', 28, 4);
insert into Students (FullName, Age, GroupId) values ('Wat Gudyer', 60, 2);
insert into Students (FullName, Age, GroupId) values ('Lauralee Gates', 23, 7);
insert into Students (FullName, Age, GroupId) values ('Eadie Browett', 20, 5);
insert into Students (FullName, Age, GroupId) values ('Madelin Lempertz', 36, 5);
insert into Students (FullName, Age, GroupId) values ('Lorilyn McKue', 53, 6);
insert into Students (FullName, Age, GroupId) values ('Bee Panting', 47, 10);
insert into Students (FullName, Age, GroupId) values ('Darlleen Mannin', 18, 5);
insert into Students (FullName, Age, GroupId) values ('Ali MacAndreis', 40, 10);
insert into Students (FullName, Age, GroupId) values ('Cobbie Fideler', 8, 1);
insert into Students (FullName, Age, GroupId) values ('Lindie Copson', 23, 8);
insert into Students (FullName, Age, GroupId) values ('Jobye Jenkyn', 28, 3);
insert into Students (FullName, Age, GroupId) values ('Keene Culwen', 42, 6);
insert into Students (FullName, Age, GroupId) values ('Valenka Messam', 38, 9);
insert into Students (FullName, Age, GroupId) values ('Alyce Files', 18, 1);
insert into Students (FullName, Age, GroupId) values ('Dex Frampton', 27, 2);
insert into Students (FullName, Age, GroupId) values ('Bridgette O''Connel', 22, 4);
insert into Students (FullName, Age, GroupId) values ('Ardra Dominelli', 25, 10);
insert into Students (FullName, Age, GroupId) values ('Ad Haythorne', 22, 4);
insert into Students (FullName, Age, GroupId) values ('Cathleen Dwerryhouse', 47, 7);
insert into Students (FullName, Age, GroupId) values ('Kerwinn Beumant', 56, 9);
insert into Students (FullName, Age, GroupId) values ('Darren Whotton', 26, 2);
insert into Students (FullName, Age, GroupId) values ('Cicily Brammer', 31, 3);
insert into Students (FullName, Age, GroupId) values ('Janetta Sterrie', 20, 4);
insert into Students (FullName, Age, GroupId) values ('Brandy Aykroyd', 51, 6);
insert into Students (FullName, Age, GroupId) values ('Whitby Cleeve', 26, 4);
insert into Students (FullName, Age, GroupId) values ('Melody Mulgrew', 16, 3);
insert into Students (FullName, Age, GroupId) values ('Melany Lowsely', 22, 8);



create table Courses
(
	Id serial primary key,
	CourseName varchar,
	Fee decimal
);

insert into Courses(CourseName,Fee)values('C++',1000),
									     ('HTML',1000),
										 ('C#',1500),
										 ('JS',1500),
										 ('Pyton',1500),
										 ('React',1500),
										 ('Golang',1500)

create table Groups
(
	Id serial primary key,
	Name varchar,
	CourceId int references Courses(Id)
);

insert into Groups(Name,CourceId)values('C++ 11',1),
									   ('C++ 11.2',1),
									   ('HTML 10',2),
									   ('HTML 10.2',2),
									   ('Pyton 9',5),
									   ('C# 9',3),
									   ('Golang 9',7),
									   ('JS 9',4),
									   ('JS 9.2',4),
									   ('React 8',6)
								