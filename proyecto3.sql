--drop table if exists economic
--drop table if exists happy
----CREACION DE TABLA ECONOMIC
/*CREATE TABLE economic(
	index int,
  	Country_Name VARCHAR(100) NOT NULL PRIMARY KEY,
  	Region VARCHAR(100) NOT NULL,
  	World_Rank float,
	Score float,
	Property_Rights float,
	Judical_Effectiveness float,
	Government_Integrity float,
	Gov_Spending float,
	Fiscal_Health float,
	Business_Freedom float,
	Labor_Freedom float,
	Monetary_Freedom float,
	Trade_Freedom float,
	Investment_freedom float, 
	Financial_Freedom float,
	Tariff_Rate float,
	Income_Tax float,
	Corporate_Tax float,
	Population float,
	GDP_Billions float,
	GDP_Growth float,
	five_GDP_Growth  float,
	GDP_Capita float,
	Unemployment float,
	Inflation float,
	FDI_Inflow float,
	Public_Debt float
);*/
-----CREACION DE TABLA HAPPY
/*
CREATE TABLE happy(
	index int,
	Overall_rank int NOT NULL,
  	Country VARCHAR(100) NOT NULL PRIMARY KEY,
	Score float,
	GDP_capita float,
	Social_support float,
	Healthy_expectancy float,
	Freedom_choices float,
	Generosity float,
	Perceptions_corruption float
);*/
----AQUI HICIMOS EL JOIN CON NUESTRA TABLA HAPPY, ESCOGIMOS HAPPY CON EL INNER PARA MANTENER TODA LA INFORMACION EN ESA MISMA, YA QUE ESTA ES NUESTRA TABLA PRINCIPAL
/*
select h.overall_rank,h.country, round(CAST(h.score as numeric), 2) as score_happy, e.country_name, 
e.world_rank, round(CAST(e.score as numeric), 2) as score_economic, e.unemployment, e.inflation, e.population
from happy h
inner join economic e
on h.country = e.country_name*/
