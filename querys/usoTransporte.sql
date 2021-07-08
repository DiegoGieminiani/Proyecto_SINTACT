--Devuelve nombre y apellido de las personas que hayan utilizado el beneficio de transporte

select nombre,apellido_paterno from afiliados where codigo in 
(select afiliados_codigo from afiliados_beneficios where beneficios_codigo in 
(select codigo from beneficios where nombre like 'Transporte%')); 
