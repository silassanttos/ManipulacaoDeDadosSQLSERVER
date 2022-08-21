/*

SELECT - reculpera dados de uma tabela


*/

select 1

select 1+2

select 5 +4 as Resultado

select 'Silas Dos Santos' as NOME

select 'silas '+'santos' as NOME


select 24 as IDADE, 'Silas' as NOME,' Dos Santos Sousa ' AS SOBRENOME, format(GETDATE(),'dd-MM-yyyy') as DATA_ATUAL

select 10 +  'Silas'

select convert(varchar,10) +  'Silas'

select 10 + '40'

select silas + 10

select 10 + 5 * 2 AS Resultado

select (10+5)*2 as Resultado


USE FundamentosTSQL
GO

Select * from vendas.cliente;


-- selecionando as colunas
select RazaoSocial, Endereco, CEP from vendas.cliente;

select CEP,RazaoSocial, Endereco from vendas.cliente;
 
 --Incluindo ALIAS ou apelido no nome das colunas
SELECT razaosocial AS EMPRESA, endereco AS LOCAL, cep AS CODIGO_POSTAL from vendas.cliente

--Realizar operacoes matematicas ou concatenação

select razaosocial, endereco+','+cidade+','+CEP as Endereço from vendas.Cliente

select * from rh.empregado

select PrimeiroNome+' '+ultimonome as NOME, cargo, salario/12*3 as SALARIO_MENSAL from rh.Empregado

select *
	from vendas.Cliente
	where Pais = 'brazil';

	
select *
	from rh.Empregado 
	where Salario > 5000 and cortesia= 'MR.';


	select * from vendas.Pedido

	select * 
		from vendas.pedido
		where dataPedido >='2006-01-01'
		AND datapedido <= '2007-01-01'
		order by datapedido
		
		select *
			from vendas.pedido
			where shipCidade = 'Rio de Janeiro'
			or shipCidade = 'Sao Paulo'

 

select razaosocial, contato, pais, cidade
	from vendas.cliente
	order by pais, cidade



select PrimeiroNome+' '+ultimonome as NOME, cargo,  format(DataAdmissao ,'dd-MM-yyyy') 
	from rh.Empregado
	order by dataadmissao

select PrimeiroNome+' '+ultimonome as NOME, cargo,  format(DataAdmissao ,'dd-MM-yyyy') 
	from rh.Empregado
	order by 1

DECLARE @d DATETIME = '12/01/2022';  
SELECT FORMAT (@d, 'd', 'en-US') AS 'US English Result',  
       FORMAT (@d, 'd', 'no') AS 'Norwegian Result',  
       FORMAT (@d, 'd', 'zu') AS 'Zulu Result';


	   select format(GETDATE(),'dd,MM,yyyy')


select distinct cidade
   from vendas.cliente

select * from vendas.cliente

   select cidade,cargo,
			count(*) totalclientes
		from vendas.cliente
		group by cidade, cargo
		having cargo = 'Accounting Manager'

select cidade,
			count(*) totalclientes
		from vendas.cliente
		group by cidade
		having count(*) >=2
		order by totalclientes desc
