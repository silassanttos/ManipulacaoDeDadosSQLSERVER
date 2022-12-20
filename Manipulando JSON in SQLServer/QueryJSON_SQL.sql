
declare @json nvarchar(max)

set @json = N'[  
       {  
         "Order": {  
           "Number":"SO43659",  
           "Date":"2011-05-31T00:00:00"  
         },  
         "AccountNumber":"AW29825",  
         "Item": {  
           "Price":2024.9940,  
           "Quantity":1  
         }  
       },  

       {  
         "Order": {  
           "Number":"SO43661",  
           "Date":"2011-06-01T00:00:00"  
         },  
         "AccountNumber":"AW73565",  
         "Item": {  
           "Price":2024.9940,  
           "Quantity":3  
         }  
      }  
 ]'  



 select * from OPENJSON (@json)
 with
 (
   Number   varchar(200) '$.Order.Number' ,  
              Date     datetime     '$.Order.Date',  
              Customer varchar(200) '$.AccountNumber',  
              Quantity int          '$.Item.Quantity' 
 )

 /*
 
saída de dados do script acima:
Number		Date				Customer		Quantity
SO43659		2011-05-31 00:00:00.000		AW29825			1
SO43661		2011-06-01 00:00:00.000		AW73565			3
 */

/*=================================================================*/

 SELECT nome, surname as 'Sobrenome', age as 'Idade'
FROM OPENJSON('{"name":"John","surname":"Doe","age":45}')
with (
	Nome varchar(200) '$.name',
	surname   varchar(200) '$.surname',
	age int	'$.age'
)

/*
saída de dados do script acima:
nome	Sobrenome	Idade
John	Doe		45
*/
