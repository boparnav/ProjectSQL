create database ProjectSql;
use ProjectSql;
create table stateinfo(State varchar(20),Capital varchar(20),
                        Population bigint,Area bigint,FamousPeople varchar(20),
                         Nickname varchar(20), Unions int, StateBird varchar(20));

drop table stateinfo;
insert into stateinfo values('Alaska','Juneau',479000,586412,'joe juneau','Last Frontier',1959,'Ptarmigan');
insert into stateinfo values('Arizona','Phoenix',2963000,113909,'Geronimo','Grand Canyon state',1912,'Cactus Wren');
insert into stateinfo values('California','Sacramento',25174000,158693,'Jack London','Golden State',1850,'Quail');
insert into stateinfo values('Florida','Tallahassee',10680000,58560,'Joseph Stilwell','Sunshine state' ,1845,'Mockingbird');
insert into stateinfo values('Hawaii','Honolulu',1023000,6450,'Don Ho','Aloha State',1959,'Goose') ;
insert into stateinfo values ('Idaho','Boise',989000,83557,'Sacajawea','GemState',1890,'Blebird');
insert into stateinfo values('Kasas','Topeka',2425000,82264,'Amelia Earthart','Sunflower State',8161,'Meadowlark');
insert into stateinfo values('Maine','Augusta',1146000,33215,'Henry Longfellow','Pine Tree State,',1820,'Chikadee,');
insert into stateinfo values('Nebraska','Lincoln',1597000,77227,'Fred Astaire','Cornhusker State',1867,'Meadowlark');
insert into stateinfo values('New Jersey','Trenton',7468000,7836,'Stephen Crane','Garden State',1787,'Goldfish');
insert into stateinfo values('New York','Albany',17667000,49576,'Walt Whitman','Empire State',1788,'Bluebird');
insert into stateinfo values('Ohio','Columbus',10746000,41222,'Bob Hope','Buckeye State',1803,'Cardinal');
insert into stateinfo values('Washington','Olympia',4300000,68192,'Bing Crosby','Evergreen State',1889,'Goldfish');
insert into stateinfo values('Wisconsin','Madison',4751000,56154,'Spencer Tracy','Badger State',1848,'Robin');


Select *from stateinfo;


---First Question
select State  from stateinfo where Unions between 1850 and 1920;

---Second Question
select State  from stateinfo where Area < 60000 and Population > 10000000;
---Third Question
select * from stateinfo order by  Population;