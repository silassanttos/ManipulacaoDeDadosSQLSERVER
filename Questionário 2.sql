use DBExemplo

drop table if exists Controle

Create Table Controle (
idAlfa int,
idBeta int, 
idGama int,
idDelta int)

insert into Controle values (1,1,31,1),(2,3,22,10),(null,4,19,5),(3,5,19,12),(4,9,10,4),(5,10,8,13),(null,15,8,8),(6,20,2,6),(7,21,1,2)

select count(*) as TotaldeLinhas,   
       COUNT(idAlfa) as idAlfa ,
	   COUNT(idBeta) as idBeta,  
	   count(idGama) as idGama,
	   count(idDelta) as idDelta 
from Controle

select COUNT(idAlfa) as idAlfa ,
	   COUNT(idBeta) as idBeta,  
	   count(idGama) as idGama,
	   count(idDelta) as idDelta 
from Controle

select COUNT(*) as TotaldeLinhas,
       COUNT(DISTINCT idAlfa) as idAlfa ,
	   COUNT(DISTINCT idBeta) as idBeta,  
	   count(DISTINCT idGama) as idGama,
	   count(DISTINCT idDelta) as idDelta 
from Controle

