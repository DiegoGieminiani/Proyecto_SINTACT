CREATE TABLE regiones (
    codigo  INTEGER NOT NULL,
    nombre  VARCHAR2(30) NOT NULL
);

CREATE TABLE provincias (
    codigo           INTEGER NOT NULL,
    nombre           VARCHAR2(30) NOT NULL,
    regiones_codigo  INTEGER NOT NULL
);

CREATE TABLE comunas (
    codigo           INTEGER NOT NULL,
    nombre           VARCHAR2(30) NOT NULL,
    provincias_codigo  INTEGER NOT NULL
);

CREATE TABLE afiliados (
    codigo             INTEGER NOT NULL,
    nacionalidad       VARCHAR2(20) NOT NULL,
    run                VARCHAR2(13),
    pasaporte          VARCHAR2(15),
    nombre             VARCHAR2(30) NOT NULL,
    segundo_nombre     VARCHAR2(30),
    apellido_paterno   VARCHAR2(30) NOT NULL,
    apellido_materno   VARCHAR2(30) NOT NULL,
    fecha_nacimiento   DATE NOT NULL,
    correo             VARCHAR2(50) NOT NULL,
    direccion          VARCHAR2(150) NOT NULL,
    discapacidad       NUMBER,
    tipo_discapacidad  VARCHAR2(100),
    pretension_sueldo  NUMBER(9, 2) NOT NULL,
    curriculum_vitae   BLOB NOT NULL,
    comunas_codigo     INTEGER NOT NULL,
    habilitado         NUMBER NOT NULL
);

CREATE TABLE tipos_parentescos (
    codigo   INTEGER NOT NULL,
    tipo     VARCHAR2(20) NOT NULL,
    detalle  VARCHAR2(100)
);

CREATE TABLE cargas (
    codigo                    INTEGER NOT NULL,
    run                       VARCHAR2(13) NOT NULL,
    nombre                    VARCHAR2(30) NOT NULL,
    segundo_nombre            VARCHAR2(30),
    apellido_paterno          VARCHAR2(30) NOT NULL,
    apellido_materno          VARCHAR2(30) NOT NULL,
    fecha_nacimiento          DATE NOT NULL,
    afiliados_codigo          INTEGER NOT NULL,
    tipos_parentescos_codigo  INTEGER NOT NULL
);

CREATE TABLE telefonos (
    afiliados_codigo  INTEGER NOT NULL,
    telefono          INTEGER NOT NULL,
    tipo              VARCHAR2(15) NOT NULL
);

CREATE TABLE seguros (
    codigo  INTEGER NOT NULL,
    nombre  VARCHAR2(50) NOT NULL
);

CREATE TABLE vehiculos (
    patente           VARCHAR2(10) NOT NULL,
    numero_chasis     VARCHAR2(30) NOT NULL,
    numero_motor      VARCHAR2(30) NOT NULL,
    marca             VARCHAR2(30) NOT NULL,
    modelo            VARCHAR2(30) NOT NULL,
    color             VARCHAR2(20) NOT NULL,
    tipo              VARCHAR2(30) NOT NULL,
    afiliados_codigo  INTEGER NOT NULL,
    beneficio_seguro  NUMBER(5, 2) NOT NULL,
    seguros_codigo    INTEGER NOT NULL
);

CREATE TABLE pagos (
    codigo            INTEGER NOT NULL,
    afiliados_codigo  INTEGER NOT NULL,
    tipo_pago         VARCHAR2(30) NOT NULL,
    run_pago          VARCHAR2(13) NOT NULL,
    tipo_banco        VARCHAR2(30),
    numero_cheque     INTEGER,
    fecha             DATE NOT NULL,
    razon             VARCHAR2(50) NOT NULL
);

CREATE TABLE categorias_beneficios (
    codigo  INTEGER NOT NULL,
    tipo    VARCHAR2(50) NOT NULL
);

CREATE TABLE beneficios (
    codigo                        INTEGER NOT NULL,
    nombre                        VARCHAR2(30) NOT NULL,
    porcetaje_descuento           NUMBER(5, 2) NOT NULL,
    descripcion                   VARCHAR2(200) NOT NULL,
    categorias_beneficios_codigo  INTEGER NOT NULL
);

CREATE TABLE afiliados_beneficios (
    afiliados_codigo   INTEGER NOT NULL,
    beneficios_codigo  INTEGER NOT NULL,
    usos               INTEGER NOT NULL
);