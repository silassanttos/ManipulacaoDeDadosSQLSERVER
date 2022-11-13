USE FundamentosTSQL;

	Select iIDEmpregado,                      -- FASE 5
		   year(DataPedido) as AnoPedido, 
		   count(*) as QuantidadePedido
	  From Vendas.Pedido                      -- FASE 1
	 Where iIDCliente = 71                    -- FASE 2
	 Group by iIDEmpregado,                   -- FASE 3
			  year(DataPedido)
	Having count(*) > 1                       -- FASE 4
	 Order by iIDEmpregado,                   -- FASE 6
			  AnoPedido


select iIdEmpregado, count (*) as 'Total Pedidos' from Vendas.Pedido group by iIDEmpregado order by 'Total Pedidos' asc;

select count(*) as 'Total Pedidos' from vendas.pedido where iIDEmpregado = 3;

 select * from rh.empregado

 select CONCAT(PrimeiroNome ,+' '+ UltimoNome), Count(*) 'Total Pedidos' from rh.empregado 
 inner join vendas.pedido ON rh.empregado.iIDEmpregado = vendas.pedido.iIDEmpregado
 group by PrimeiroNome,UltimoNome Order by 'Total Pedidos' ASC;
 
