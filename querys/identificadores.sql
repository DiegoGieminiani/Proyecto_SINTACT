ALTER TABLE afiliados ADD CONSTRAINT afiliados_pk PRIMARY KEY ( codigo );

ALTER TABLE afiliados ADD CONSTRAINT afiliados_run_un UNIQUE ( run );

ALTER TABLE afiliados ADD CONSTRAINT afiliados_pasaporte_un UNIQUE ( pasaporte );

ALTER TABLE afiliados_beneficios ADD CONSTRAINT afiliados_beneficios_pk PRIMARY KEY ( afiliados_codigo,
                                                                                      beneficios_codigo );
ALTER TABLE beneficios ADD CONSTRAINT beneficios_pk PRIMARY KEY ( codigo );

ALTER TABLE cargas ADD CONSTRAINT cargas_pk PRIMARY KEY ( codigo );

ALTER TABLE categorias_beneficios ADD CONSTRAINT categorias_beneficios_pk PRIMARY KEY ( codigo );

ALTER TABLE provincias ADD CONSTRAINT provincias_pk PRIMARY KEY ( codigo );

ALTER TABLE comunas ADD CONSTRAINT comunas_pk PRIMARY KEY ( codigo );

ALTER TABLE pagos ADD CONSTRAINT pagos_pk PRIMARY KEY ( codigo );

ALTER TABLE regiones ADD CONSTRAINT regiones_pk PRIMARY KEY ( codigo );

ALTER TABLE seguros ADD CONSTRAINT seguros_pk PRIMARY KEY ( codigo );

ALTER TABLE telefonos ADD CONSTRAINT telefonos_pk PRIMARY KEY ( telefono,
                                                                afiliados_codigo );

ALTER TABLE tipos_parentescos ADD CONSTRAINT tipos_parentescos_pk PRIMARY KEY ( codigo );                                                                

ALTER TABLE vehiculos ADD CONSTRAINT vehiculos_pk PRIMARY KEY ( patente );

ALTER TABLE vehiculos ADD CONSTRAINT vehiculos_numero_chasis_un UNIQUE ( numero_chasis );

ALTER TABLE vehiculos ADD CONSTRAINT vehiculos_numero_motor_un UNIQUE ( numero_motor );

ALTER TABLE afiliados
    ADD CONSTRAINT afiliados_comunas_fk FOREIGN KEY ( comunas_codigo )
        REFERENCES comunas ( codigo );

ALTER TABLE afiliados_beneficios
    ADD CONSTRAINT afiliados_fk FOREIGN KEY ( afiliados_codigo )
        REFERENCES afiliados ( codigo );

ALTER TABLE afiliados_beneficios
    ADD CONSTRAINT beneficios_fk FOREIGN KEY ( beneficios_codigo )
        REFERENCES beneficios ( codigo );

ALTER TABLE cargas
    ADD CONSTRAINT cargas_afiliados_fk FOREIGN KEY ( afiliados_codigo )
        REFERENCES afiliados ( codigo );

ALTER TABLE cargas
    ADD CONSTRAINT cargas_tipos_parentescos_fk FOREIGN KEY ( tipos_parentescos_codigo )
        REFERENCES tipos_parentescos ( codigo );

ALTER TABLE beneficios
    ADD CONSTRAINT categorias_fk FOREIGN KEY ( categorias_beneficios_codigo )
        REFERENCES categorias_beneficios ( codigo );

ALTER TABLE ciudades
    ADD CONSTRAINT ciudades_regiones_fk FOREIGN KEY ( regiones_codigo )
        REFERENCES regiones ( codigo );

ALTER TABLE comunas
    ADD CONSTRAINT comunas_provincias_fk FOREIGN KEY ( provincias_codigo )
        REFERENCES provincias ( codigo );

ALTER TABLE pagos
    ADD CONSTRAINT pagos_afiliados_fk FOREIGN KEY ( afiliados_codigo )
        REFERENCES afiliados ( codigo );

ALTER TABLE telefonos
    ADD CONSTRAINT telefonos_afiliados_fk FOREIGN KEY ( afiliados_codigo )
        REFERENCES afiliados ( codigo );

ALTER TABLE vehiculos
    ADD CONSTRAINT vehiculos_afiliados_fk FOREIGN KEY ( afiliados_codigo )
        REFERENCES afiliados ( codigo );

ALTER TABLE vehiculos
    ADD CONSTRAINT vehiculos_seguros_fk FOREIGN KEY ( seguros_codigo )
        REFERENCES seguros ( codigo );
