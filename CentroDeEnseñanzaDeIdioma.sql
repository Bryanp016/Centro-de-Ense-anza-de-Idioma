/*==============================================================*/
/* Pin Tinitana Bryan Antonio                                   */
/*==============================================================*/

create table ROL (
   ROL_ID               INT4                 not null,
   ROL_DESCRIPCION      CHAR(10)             null,
   constraint PK_ROL primary key (ROL_ID)
);
/*==============================================================*/
insert into ROL values(1,'Docente');
insert into ROL values(2,'Estudiante');


/*==============================================================*/
/* Table: PERSONA                                               */
/*==============================================================*/
create table PERSONA (
   CEDULA               INT4                 not null,
   ROL_ID               INT4                 not null,
   NOMBRES              CHAR(50)             null,
   APELLIDO             CHAR(50)             null,
   CORREO               CHAR(50)             null,
   FECHA                CHAR(50)             null,
   PROVINCIA            CHAR(50)             null,
   CIUDAD               CHAR(50)             null,
   constraint PK_PERSONA primary key (CEDULA)
);
/*==============================================================*/
--docentes--			  
insert into PERSONA values(2022060401,1,'EDWIN DENNIS','RIVADENEIRA SALVATIERRA','ed2022@gmail.com','2020-12-04','Manabi','Manta');
insert into PERSONA values(2022060402,1,'JUANA EVANGELISTA','RIVERA MERO','je2022@gmail.com','2020-12-04','Manabi','Manta');
insert into PERSONA values(2022060403,1,'ESTHER ELIZABETH','MERO MARIN','ee2022@gmail.com','2020-12-04','Manabi','Portoviejo');
insert into PERSONA values(2022060404,1,'MAURICIO ANTONIO','LOPEZ GOMES','ma2022@gmail.com','2020-12-04','Manabi','Portoviejo');
insert into PERSONA values(2022060405,1,'ANGEL AVAN','BRAVO LOOR','aa2022@gmail.com','2020-12-04','Manabi','Manta');
insert into PERSONA values(2022060406,1,'SHIRLEY GISELA','MERO ZAMORA','sg2022@gmail.com','2020-12-04','Manabi','Pedernales');
insert into PERSONA values(2022060407,1,'LUIS SEGUNDO','SEVILLA MORAN','ls2022@gmail.com','2020-12-04','Manabi','Pedernales');
--estudiantes--
insert into PERSONA values(2022060408,2,'Jefferson','Vera','jv2022@gmail.com','2020-12-04','Manabi','Manta');
insert into PERSONA values(2022060409,2,'Plua','Alberto','pl2022@gmail.com','2020-12-04','Manabi','Chone');
insert into PERSONA values(2022060410,2,'Sara','Centeno','sc2022@gmail.com','2020-12-04','Manabi','Manta');
insert into PERSONA values(2022060411,2,'Joselin','Rivas','jr2022@gmail.com','2020-12-04','Manabi','Carmen');
insert into PERSONA values(2022060412,2,'Eras','Tomala','et2022@gmail.com','2020-12-04','Manabi','Manta');
------
insert into PERSONA values(2022060413,2,'Juan','Chavarria','jc2022@gmail.com','2020-12-04','Guayas','Guayaquil');
insert into PERSONA values(2022060414,2,'Agustin','Intriago','ai2022@gmail.com','2020-12-04','Guayas','Guayaquil');
insert into PERSONA values(2022060415,2,'Alexandra','Parrales','ap2022@gmail.com','2020-12-04','Guayas','Guayaquil');
insert into PERSONA values(2022060416,2,'Julia','Bacuzoy','jb2022@gmail.com','2020-12-04','Manabi','Carmen');
insert into PERSONA values(2022060417,2,'Luis','Cevallos','lc2022@gmail.com','2020-12-04','Manabi','Manta');
------
insert into PERSONA values(2022060418,2,'Salvador','Usma','su2022@gmail.com','2020-12-04','Pichincha','Quito');
insert into PERSONA values(2022060419,2,'Jesus','Velez','jv2022@gmail.com','2020-12-04','Pichincha','Quito');
insert into PERSONA values(2022060420,2,'Alejandro','Alcivar','aal2022@gmail.com','2020-12-04','Pichincha','Quito');
insert into PERSONA values(2022060421,2,'Manuel','Lopez','ml2022@gmail.com','2020-12-04','Manabi','Chone');
insert into PERSONA values(2022060422,2,'Maria','Delgado','md2022@gmail.com','2020-12-04','Manabi','Carmen');


/*==============================================================*/
/* Table: REGISTRO_ACTIVIDADES                                  */
/*==============================================================*/
create table REGISTRO_ACTIVIDADES (
   RESAC_ID             INT4                 not null,
   CEDULA               INT4                 not null,
   RESAC_DESCRIPCION    CHAR(100)            null,
   RESAC_RENDIMIENTO    CHAR(10)             null,
   constraint PK_REGISTRO_ACTIVIDADES primary key (RESAC_ID)
);
/*==============================================================*/
insert into REGISTRO_ACTIVIDADES values (1,2022060401,'Se realizo actividad en clases','Bueno');
insert into REGISTRO_ACTIVIDADES values (2,2022060402,'Se realizo actividad en clases','Malo'); 
insert into REGISTRO_ACTIVIDADES values (3,2022060403,'Se realizo actividad en clases','Bueno');
insert into REGISTRO_ACTIVIDADES values (4,2022060404,'Se realizo actividad en clases','Malo');
insert into REGISTRO_ACTIVIDADES values (5,2022060405,'Se realizo actividad en clases','Bueno');
insert into REGISTRO_ACTIVIDADES values (6,2022060406,'Se realizo actividad en clases','Malo');
insert into REGISTRO_ACTIVIDADES values (7,2022060407,'Se realizo actividad en clases','Bueno');


/*==============================================================*/
/* Table: HORARIOS                                              */
/*==============================================================*/
create table HORARIOS (
   HOR_ID               INT4                 not null,
   HOR_ENTRADA          CHAR(25)             null,
   HOR_SALIDA           CHAR(25)             null,
   HOR_JORNADA          CHAR(10)             null,
   constraint PK_HORARIOS primary key (HOR_ID)
);
/*==============================================================*/
insert into HORARIOS values(1,'09H00','11H00','Matutina');
insert into HORARIOS values(2,'07H00','09H00','Matutina');
insert into HORARIOS values(3,'08H00','10H00','Matutina');
insert into HORARIOS values(4,'14H00','16H00','Vespertina');
insert into HORARIOS values(5,'13H00','15H00','Vespertina');
insert into HORARIOS values(6,'13H00','17H00','Vespertina');
insert into HORARIOS values(7,'18H00','20H00','Nocturna');
insert into HORARIOS values(8,'19H00','21H00','Nocturna');


/*==============================================================*/
/* Table: REGISTRO                                              */
/*==============================================================*/
create table REGISTRO (
   RES_ID               INT4                 not null,
   HOR_ID               INT4                 not null,
   CEDULA               INT4                 not null,
   RES_IDIOMA           CHAR(15)             null,
   RES_FECHA_REGISTRO   CHAR(35)             null,
   RES_DIFICULTAD       CHAR(15)             null,
   RES_PRECIO_CUR       DECIMAL              null,
   RES_TIEMPO_PRO       CHAR(15)             null,
   constraint PK_REGISTRO primary key (RES_ID)
);
/*==============================================================*/
--estudiantes--
insert into REGISTRO values(1,1,2022060408,'Ingles','02-06-2022','Basico',50,'8 meses');
insert into REGISTRO values(2,2,2022060409,'Ingles','02-06-2022','Intermedio',60,'8 meses');
insert into REGISTRO values(3,3,2022060410,'Ingles','02-06-2022','Avanzado',70,'8 meses');
insert into REGISTRO values(4,4,2022060411,'Ingles','02-06-2022','Basico',50,'8 meses');
insert into REGISTRO values(5,5,2022060412,'Ingles','02-06-2022','Intermedio',60,'8 meses');
------
insert into REGISTRO values(6,6,2022060413,'Ruso','03-06-2022','Avanzado',90,'8 meses');
insert into REGISTRO values(7,7,2022060414,'Ruso','03-06-2022','Basico',70,'8 meses');
insert into REGISTRO values(8,8,2022060415,'Ruso','03-06-2022','Intermedio',80,'8 meses');
insert into REGISTRO values(9,1,2022060416,'Ruso','03-06-2022','Avanzado',90,'8 meses');
insert into REGISTRO values(10,2,2022060417,'Ruso','03-06-2022','Basico',70,'8 meses');
------
insert into REGISTRO values(11,3,2022060418,'Japones','04-06-2022','Intermedio',150,'8 meses');
insert into REGISTRO values(12,4,2022060419,'Japones','04-06-2022','Avanzado',170,'8 meses');
insert into REGISTRO values(13,5,2022060420,'Japones','04-06-2022','Basico',125,'8 meses');
insert into REGISTRO values(14,6,2022060421,'Japones','04-06-2022','Intermedio',150,'8 meses');
insert into REGISTRO values(15,7,2022060422,'Japones','04-06-2022','Basico',125,'8 meses');
--docentes--	
insert into REGISTRO values(16,1,2022060401,'Ingles','01-06-2022',null,null,null);
insert into REGISTRO values(17,2,2022060402,'Ingles','01-06-2021',null,null,null);
insert into REGISTRO values(18,3,2022060403,'Ruso','01-06-2020',null,null,null);
insert into REGISTRO values(19,4,2022060404,'Ruso','02-06-2019',null,null,null);
insert into REGISTRO values(20,5,2022060405,'Ruso','03-06-2018',null,null,null);
insert into REGISTRO values(21,6,2022060406,'Japones','04-06-2017',null,null,null);	
insert into REGISTRO values(22,7,2022060407,'Japones','05-06-2016',null,null,null);		


/*==============================================================*/
/* Table: FACTURA                                               */
/*==============================================================*/
create table FACTURA (
   FAC_ID               INT4                 not null,
   RES_ID               INT4                 not null,
   FAC_FECHA            CHAR(25)             null,
   FAC_TOTAL            DECIMAL              null,
   constraint PK_FACTURA primary key (FAC_ID)
);
/*==============================================================*/
insert into FACTURA values(1,1,'2022-06-04',51.50);
insert into FACTURA values(2,2,'2022-06-04',61.50);
insert into FACTURA values(3,3,'2022-06-04',71.50);
insert into FACTURA values(4,4,'2022-06-04',51.50);
insert into FACTURA values(5,5,'2022-06-04',61.50);
------
insert into FACTURA values(6,6,'2022-06-04',91.50);
insert into FACTURA values(7,7,'2022-06-04',71.50);
insert into FACTURA values(8,8,'2022-06-04',81.50);
insert into FACTURA values(9,9,'2022-06-04',91.50);
insert into FACTURA values(10,10,'2022-06-04',71.50);
------
insert into FACTURA values(11,11,'2022-06-04',151.50);
insert into FACTURA values(12,12,'2022-06-04',171.50);
insert into FACTURA values(13,13,'2022-06-04',126.50);
insert into FACTURA values(14,14,'2022-06-04',151.50);
insert into FACTURA values(15,15,'2022-06-04',126.50);


/*==============================================================*/
/* Llaves Foraneas                                              */
/*==============================================================*/
alter table FACTURA
   add constraint FK_FACTURA_RELATIONS_REGISTRO foreign key (RES_ID)
      references REGISTRO (RES_ID)
      on delete restrict on update restrict;

alter table PERSONA
   add constraint FK_PERSONA_RELATIONS_ROL foreign key (ROL_ID)
      references ROL (ROL_ID)
      on delete restrict on update restrict;

alter table REGISTRO
   add constraint FK_REGISTRO_RELATIONS_HORARIOS foreign key (HOR_ID)
      references HORARIOS (HOR_ID)
      on delete restrict on update restrict;

alter table REGISTRO
   add constraint FK_REGISTRO_RELATIONS_PERSONA foreign key (CEDULA)
      references PERSONA (CEDULA)
      on delete restrict on update restrict;

alter table REGISTRO_ACTIVIDADES
   add constraint FK_REGISTRO_RELATIONS_PERSONA foreign key (CEDULA)
      references PERSONA (CEDULA)
      on delete restrict on update restrict;

/* Consulta 1 */  
SELECT 
  rol.rol_descripcion, 
  persona.provincia, 
  persona.ciudad, 
  count (persona.cedula) as suma
FROM 
  public.persona
  inner join public.rol on rol.rol_id = persona.rol_id
  
  GROUP BY persona.provincia, rol.rol_descripcion,persona.ciudad
 
/* Consulta 2 */ 
SELECT 
  rol.rol_descripcion, 
  COUNT (registro.cedula) AS SUMA, 
  registro.res_idioma,
  registro.res_dificultad
FROM 
  public.persona
  INNER JOIN public.rol ON rol.rol_id = persona.rol_id
  INNER JOIN public.registro ON persona.cedula = registro.cedula 
WHERE 
   rol.rol_descripcion = 'Estudiante'

GROUP BY registro.res_idioma, rol.rol_descripcion , registro.res_dificultad

/* Consulta 3 */
SELECT 
  rol.rol_descripcion, 
  count(persona.nombres) cantidad, 
  registro.res_fecha_registro
FROM
  public.registro 
  INNER JOIN public.persona ON persona.cedula = registro.cedula
  INNER JOIN public.rol ON rol.rol_id = persona.rol_id 
WHERE 
  rol.rol_descripcion = 'Docente'
  
GROUP BY registro.res_fecha_registro, rol.rol_descripcion

/* Consulta 4 */
SELECT 
  rol.rol_descripcion, 
  COUNT (registro.cedula) AS SUMA, 
  registro.res_idioma
FROM 
  public.persona
  INNER JOIN public.rol ON rol.rol_id = persona.rol_id
  INNER JOIN public.registro ON persona.cedula = registro.cedula 
WHERE 
   rol.rol_descripcion = 'Docente'

GROUP BY registro.res_idioma, rol.rol_descripcion


