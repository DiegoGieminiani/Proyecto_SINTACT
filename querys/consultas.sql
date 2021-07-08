--Mostrar solo los afiliados que tengan segundo nombre
select nombre,segundo_nombre,apellido_paterno,apellido_materno 
from afiliados 
where segundo_nombre is not null;

--Mostrar datos de vehiculos que tengan un descuento en el seguro entre 10% y 30%
select patente,numero_chasis,numero_motor,beneficio_seguro
from vehiculos 
where beneficio_seguro between 10 and 30;

--Mostrar informacion de los afiliados que tengan como carga a su pareja y estén casados
select nombre,apellido_paterno from afiliados where codigo in 
(select afiliados_codigo from cargas where tipos_parentescos_codigo in 
(select codigo from tipos_parentescos where tipo = 'Pareja' and detalle = 'Casados'));

--Mostrar todos los telefonos asociados a los afiliados con nombre "Alejandro"
select telefono,tipo from telefonos where afiliados_codigo 
in (select codigo from afiliados where nombre = 'Alejandro');

--Trae informacion de los vehiculos de colo rojo
select patente, numero_chasis, numero_motor from vehiculos where color = 'rojo';




--Devuelve nombre y apellido de las personas que hayan utilizado el beneficio de transporte
select nombre,apellido_paterno from afiliados where codigo in 
(select afiliados_codigo from afiliados_beneficios where beneficios_codigo in 
(select codigo from beneficios where nombre like 'Transporte%')); 
