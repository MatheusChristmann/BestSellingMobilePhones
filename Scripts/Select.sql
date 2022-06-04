/* SCRIPS DE CONSULTA DOS DADOS */
------------------------------------------------------------------------------------------

/* Exploração de Dados */

select 	
	count(*) as "Quantidade Registros"
from phones;
---------------------------------------------
select 	
	*
from phones
limit 10;
---------------------------------------------
SELECT column_name, data_type 
FROM information_schema."columns" 
WHERE table_name = 'phones';
---------------------------------------------
SELECT distinct
	nome_fabricante
FROM phones;

------------------------------------------------------------------------------------------

/* Análise de Dados */

select 	
	min(Ano_lancamento),
	max(Ano_lancamento)
from phones
---------------------------------------------
select 
	ano_lancamento,
	count(*) as "qtd lançados"
from phones
group by ano_lancamento
order by ano_lancamento 
---------------------------------------------
select 	
	nome_fabricante,
	modelo,
	qtd_vendas 
from phones
where ano_lancamento  = 2019
order by qtd_vendas desc

---------------------------------------------
select
	Nome_fabricante,
	count(Nome_fabricante) as "qtd registros"
from phones
group by Nome_Fabricante
order by count(Nome_fabricante) desc
---------------------------------------------
select 	
	Ano_lancamento,
	sum(qtd_vendas) as "total vendas por ano"
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
	modelo
from phones
order by qtd_vendas desc
limit 10
---------------------------------------------
select
	Nome_Fabricante,
	sum(Qtd_vendas) as "total_vendas"
from phones 
group by Nome_Fabricante
order by "total_vendas" desc 
limit 10 
--------------------------------------------
select 
	modelo,
	ano_lancamento,
	qtd_vendas 
from phones
where nome_fabricante like 'Samsung'
and modelo like '%Galaxy S%'
order by qtd_vendas desc 


