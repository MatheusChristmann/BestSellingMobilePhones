select 	
	count(*) as "Quantidade Registros"
from phones
---------------------------------------------
select 	
	*
from phones
limit 10
---------------------------------------------
SELECT column_name, data_type FROM information_schema."columns" WHERE table_name = 'phones';
---------------------------------------------
SELECT distinct
	nome_fabricante
FROM phones
---------------------------------------------
select
Nome_fabricante,
	count(Nome_fabricante)
from phones
group by Nome_Fabricante
order by count(Nome_fabricante) desc
---------------------------------------------
select 	
	min(Ano_lancamento),
	max(Ano_lancamento)
from phones
---------------------------------------------
select
	Nome_Fabricante,
	sum(Qtd_vendas) as "Total_Vendas"
from phones 
group by Nome_Fabricante
order by "Total_Vendas" desc 
limit 10
---------------------------------------------
select 	
	Ano_lancamento,
	sum(qtd_vendas)
from phones
group by Ano_lancamento
order by Ano_lancamento
---------------------------------------------
select 	
	sum(qtd_vendas) as "Total de Vendas em Milhões"
from phones
---------------------------------------------
select
	nome_fabricante,
	max(qtd_vendas) as "Vendas em Milhões"
from phones
group by nome_fabricante 
order by "Vendas em Milhões" desc
---------------------------------------------
select
	nome_fabricante,
	min(qtd_vendas) as "Vendas em Milhões"
from phones
group by nome_fabricante 
order by "Vendas em Milhões"
---------------------------------------------
select 
	ano_lancamento,
	count(*)
from phones
group by ano_lancamento
order by ano_lancamento 
---------------------------------------------

