
select 
concat(marca,'-Art:',codigo) as product_name, 
SKUCode as product_sku,
'' as product_parent_sku,
concat(marca,'-Art ',codigo,'-',SKUCode) as slug,
 talle as  VM_MULTIVARIANT_FIELD_LABEL1,
 color as Color,
 'COM_VIRTUEMART_FIELD_MULTIVARIANT_LABEL' as multi_variant_title,
 'VM_MULTIVARIANT_FIELD_LABEL1~Color' as multi_variant_fields,
 '1.0' as product_price,Disabled,
 (case when (Disabled = '0') then 'Y' else 'N' end) as published,
 'Lenceria de Hombre/Bakhou' as category_path ,
 concat(concat(AdditionalDescription,' ',marca,'-Art:',codigo),'<br />',talle,' - ',color) as product_desc,
  (CASE 
		WHEN trim(talle)='TS' then 1
		WHEN trim(talle)='TM' then 2
        WHEN trim(talle)='TL' then 3
        WHEN trim(talle)='TXL' then 4
        WHEN trim(talle)='TXL' then 5
       ELSE 6
        END) as peso
from ernes_articulos_tango t where marca ='BAKHOU'
order by codigo, peso,color;


/*
select distinct virtuemart_product_id,codigo
from ernes_virtuemart_products p,ernes_articulos_tango t
where 
t.codigo=p.product_sku and t.marca='SIGRY'
#and AdditionalDescription = ''




