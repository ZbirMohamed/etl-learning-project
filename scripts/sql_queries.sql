select * from sales_fact limit 5;

---- pour utilise des cle facile numeric (pour les jointures) mieux d'utiliser des clés varchar ----
update
	sales_fact
set customer_logical_key = dc.index
from
 dim_customers dc
where sales_fact.customer_id = dc.customer_id;
---------- on peut bien sur ajouter des index dans la column customer pour ameliorer les recherche

------ pour le suivi des derniers elements entrantes ----

select max(index) from dim_customers; -- 99441
select max(index) from sales_fact; -- 113425

---------------------------------------------------------
