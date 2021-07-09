insert into regiones values(1,'Región de Tarapacá');
insert into regiones values(12,'Region de Magallanes');
insert into regiones values(13,'Region Metropolitana');

insert into provincias values(1,'Chacabuco',13);
insert into provincias values(2,'Cordillera',13);
insert into provincias values(3,'Maipo',13);
insert into provincias values(4,'Melipilla',13);
insert into provincias values(5,'Santiago',13);
insert into provincias values(6,'Talagante',13);

insert into comunas values (13,'La Reina',5);
insert into comunas values (14,'Las Condes',5);
insert into comunas values (8,'Independencia',5);
insert into comunas values (20, 'Ñuñoa',5);

insert into afiliados values(1,'chile','26478742-4',null,'Alejandro',null,'Ferrera','Hernandez',TO_DATE('1993/10/09', 'yyyy/mm/dd'),'aferrerah1421@gmail.com','Condominio Las Perdices 77',0,null,500000.00,utl_raw.cast_to_raw('curriculum'),13,1);
insert into afiliados values(2,'chile','18769251-1',null,'Diego','Alonso','Gieminiani','Gonzales',TO_DATE('1994/09/07', 'yyyy/mm/dd'),'diegogieminiani@gmail.com','Rosario Norte 307',0,null,375000.00,utl_raw.cast_to_raw('curriculum'),14,1);
insert into afiliados values(3,'venezuela',null,'J540012','Nicolas','Alejandro','Davila','Cardenas',TO_DATE('2002/07/29', 'yyyy/mm/dd'),'nicolas8859.nd@gmail.com','Leonor Cepeda 952',0,null,500000.00,utl_raw.cast_to_raw('curriculum'),8,1);
insert into afiliados values(4,'chile','253533110',null,'Elena',null,'Hernandez','Mijares',TO_DATE('1970/05/14', 'yyyy/mm/dd'),'ehmijares@gmail.com','Condominio Las Perdices 77',0,null,500000.00,utl_raw.cast_to_raw('curriculum'),13,1);
insert into afiliados values(5,'cuba',null,'K13476','Irina',null,'Pando','Camargo',TO_DATE('1982/06/09', 'yyyy/mm/dd'),'irinapando09@gmail.com','Las Condes 12771',0,null,524000.00,utl_raw.cast_to_raw('curriculum'),14,1);

insert into tipos_parentescos values(1,'Hijo',null);
insert into tipos_parentescos values(2,'Pareja','No casados');
insert into tipos_parentescos values(3,'Pareja','Casados');
insert into tipos_parentescos values(4,'Pareja','Union Civil');

insert into cargas values (1,'25441354-2','Javier',null,'Rodriguez','Gonzales',TO_DATE('1952-04-22','yyyy-mm-dd'),1,1);
insert into cargas values (2,'15641357-3','Javiera',null,'Castillo','Mora',TO_DATE('1993-05-22','yyyy-mm-dd'),2,2);
insert into cargas values (3,'25564639-4','Rachel','Alejandra','Valenzuela','Loyola',TO_DATE('1994-08-24','yyyy-mm-dd'),3,3);
insert into cargas values (4,'26473839-4','Victor','Evidio','Rodriguez','Martinez',TO_DATE('1970-04-23','yyyy-mm-dd'),4,3);
insert into cargas values (5,'25352114-k','Ivan','Camilo','Ferrera','Perez',TO_DATE('1980-10-24','yyyy-mm-dd'),5,3);

insert into telefonos values(1,973801651,'Celular');
insert into telefonos values(1,244851751,'Casa');
insert into telefonos values(2,934247457,'Celular');
insert into telefonos values(3,942714842,'Celular');

insert into seguros values (1, 'hdi');
insert into seguros values (2, 'falabella');
insert into seguros values (3, 'santander');
insert into seguros values (4, 'bci');
insert into seguros values (5, 'consorcio');

insert into vehiculos values ('BB-BB-10', 'LJCPLBCX11000217', 'ASDFDJYS75548SD', 'nissan', 'cx-1', 'rojo', 'sub', 1, 21.0, 1);
insert into vehiculos values ('CV-VA-10', 'CSKNHJLLCDW22579', 'UUWMMXIJNP77755', 'mini', 'muy mini', 'amarilo', 'coupe', 2, 15.0,2);
insert into vehiculos values ('CX-CC-88', 'ASDFDFDC5574022C', 'TTWOUHYYXQ88258', 'ford', 'raptor', 'negro', 'pick up',3, 5.5, 3);
insert into vehiculos values ('YV-DD-57', 'TTEOLMNBOO555574', 'IHNCPOJS887S888', 'toyota', 'corolla', 'negro', 'coupe', 4, 35.5, 4);
insert into vehiculos values ('CA-FF-99', 'LKPJNBHGFDQ55217', 'MAUTQM777FDHG88', 'mg', 'wtver', 'azul', 'x', 5, 40.0, 5);

insert into pagos values(1, 1, 'cheque', '26478742-4', 'santander', 32132165498, TO_DATE('2020/12/09', 'yyyy/mm/dd'), 'pago inicial');
insert into pagos values(2, 2, 'transferencia', '18769251-1', 'bci', null, TO_DATE('2020/11/09', 'yyyy/mm/dd'), 'pago inicial');
insert into pagos values(3, 2, 'efectivo', '18769251-1', null, null, TO_DATE('2020/12/09', 'yyyy/mm/dd'), 'mensualidad');
insert into pagos values(4, 1, 'cheque', '26478742-4', 'santander', 258256693, TO_DATE('2021/01/09', 'yyyy/mm/dd'), 'mensualidad');
insert into pagos values(5, 1, 'cheque', '26478742-4', 'itau', 7896544582, TO_DATE('2021/02/09', 'yyyy/mm/dd'), 'mensualidad');
insert into pagos values(6, 3, 'efectivo', '26601453-8', null, null, TO_DATE('2021/07/29', 'yyyy/mm/dd'), 'pago inicial');

insert into categorias_benefinicos values(1,'deporte')
insert into categorias_benefinicos values(2,'educacion')
insert into categorias_benefinicos values(3,'salud')
insert into categorias_benefinicos values(4,'transporte')

insert into beneficios values(1,'Transporte_aereo',13.5,'(sin limites de uso)',4);
insert into beneficios values(2,'Transporte_terrestre',30.0,'(sin limites de uso)',4);
insert into beneficios values(3,'Transporte_maritimo',23.25,'(sin limites de uso)',4);
insert into beneficios values(4,'Vida del deportista',15.0,'15% de descuento en tiendas de deporte(4 usos maximo)',3);

insert into afiliados_beneficios values (1,1,1);
insert into afiliados_beneficios values (1,2,2);
insert into afiliados_beneficios values (1,4,1);
insert into afiliados_beneficios values (2,3,10);
insert into afiliados_beneficios values (2,4,2);
insert into afiliados_beneficios values (2,1,2);
insert into afiliados_beneficios values (3,2,15);
insert into afiliados_beneficios values (6,4,3);


create sequence autoincremental
start with 6
increment by 1;

insert into afiliados values(autoincremental.nextval,'chile','28723420-k',null,'Wilson','Javier','Chamorro','Lopez',TO_DATE('1970/03/09', 'yyyy/mm/dd'),'w.chamorro@duocuc.cl','Irarrazaval 22554',0,null,1524000.00,utl_raw.cast_to_raw('curriculum'),20,1);
