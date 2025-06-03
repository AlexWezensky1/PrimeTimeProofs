declare @mytable table (year int, receiver nvarchar(20), RecYardsVideo int) ;

insert into @mytable (year, receiver, RecYardsVideo)
values
 (2024,'Shakir',821)
,(2023,'Flowers',858)
,(2022,'Kelce' ,1338)
,(2021,'Adams'   ,1553)
,(2020,'Adams',1374)
,(2019,'Andrews' ,852)
,(2018,'Hill',1479)
,(2017,'Gronkowski' ,1084)
,(2016,'Jones'   ,1409)
,(2015,'Olsen',1104)
,(2014,'Nelson' ,1519)
,(2013,'Thomas'   ,1430)
,(2011,'Nelson',1263)
,(2010,'Welker' ,848)
,(2009,'Wayne'   ,1264)
,(2008,'Wayne',1145)
,(2007,'Moss' ,1493)
,(2006,'Tomlinson',0)
,(2004,'Wayne'   ,1210)
,(2003,'Harrison' ,1272)
,(2003,'Mason',1303)
,(2002,'Rice' ,1211)
,(2001,'Holt'   ,1363) ;

select * from @mytable
