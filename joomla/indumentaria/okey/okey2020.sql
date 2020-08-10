delete from 
ljul_virtuemart_product_customfields 
where 
virtuemart_custom_id = '10' OR virtuemart_custom_id='11';

update ljul_articulos_tango_exp set Description = replace(Description,'  ',' ') where marca='OKEY';
update ljul_articulos_tango_exp 
set codigo=trim(split(Description,' ',1)),
    talle=(CASE WHEN trim(split(Description,' ',2)) <> '' then trim(split(Description,' ',2)) else 'UNICO' END),
    color=(CASE WHEN trim(split(Description,' ',3)) <> '' then trim(split(Description,' ',3)) else 'VARIOS' END)
where 
marca='OKEY';
    
select
	trim(split(Description,' ',1)) as codigo,
	(CASE WHEN trim(split(Description,' ',2)) != '' then trim(split(Description,' ',2)) else 'UNICO' END) as talle,
	(CASE WHEN trim(split(Description,' ',3)) != '' then trim(split(Description,' ',3)) else 'VARIOS' END) as color,
    Description,
    AdditionalDescription,BarCode
    from ljul_articulos_tango_exp
where 
marca='OKEY'

select distinct(talle) from ljul_articulos_tango_exp 
where marca='OKEY'

order by talle