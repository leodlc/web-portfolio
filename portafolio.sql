/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     9/5/2023 1:09:12 PM                          */
/*==============================================================*/


drop table if exists AREA_CONOCIMIENTO;

drop table if exists CERTIFICADOS;

drop table if exists CONOCIMIENTOS;

drop table if exists CONTACTOS;

drop table if exists EDUCACION;

drop table if exists INSTITUCION;

drop table if exists PROYECTOS;

/*==============================================================*/
/* Table: AREA_CONOCIMIENTO                                     */
/*==============================================================*/
create table AREA_CONOCIMIENTO
(
   ID_AREACO            int not null,
   NOMBER_AREACO        varchar(50) not null,
   primary key (ID_AREACO)
);

/*==============================================================*/
/* Table: CERTIFICADOS                                          */
/*==============================================================*/
create table CERTIFICADOS
(
   NOMBRE_CERTI         varchar(50) not null,
   ID_CERTI             int not null,
   ID_INST              int not null,
   DESCRIP_CERT         varchar(100) not null,
   IMG_CERT             varchar(100),
   UNIVERSIDAD_CERT     varchar(100) not null,
   primary key (ID_CERTI)
);

alter table CERTIFICADOS comment 'Información sobre los certificados que poseo';

/*==============================================================*/
/* Table: CONOCIMIENTOS                                         */
/*==============================================================*/
create table CONOCIMIENTOS
(
   ID_CONO              int not null,
   ID_AREACO            int not null,
   DESCRP_CONO          varchar(100) not null,
   primary key (ID_CONO)
);

/*==============================================================*/
/* Table: CONTACTOS                                             */
/*==============================================================*/
create table CONTACTOS
(
   ID_CONTACTO          int not null,
   CORREO_CONTACTO      varchar(50) not null,
   MENSAJE_CONTACTO     varchar(500),
   primary key (ID_CONTACTO)
);

alter table CONTACTOS comment 'información de las personas que me han contactado por medio ';

/*==============================================================*/
/* Table: EDUCACION                                             */
/*==============================================================*/
create table EDUCACION
(
   ID_EDU               int not null,
   ID_INST              int,
   NOMBRE_EDU           char(50) not null,
   TIPO_EDU             char(20) not null,
   DESCRIP_EDU          varchar(100) not null,
   primary key (ID_EDU)
);

/*==============================================================*/
/* Table: INSTITUCION                                           */
/*==============================================================*/
create table INSTITUCION
(
   ID_INST              int not null,
   NOMBRE_INST          char(50) not null,
   UBICACION_INST       varchar(100),
   TIPO_INST            char(20) not null,
   primary key (ID_INST)
);

/*==============================================================*/
/* Table: PROYECTOS                                             */
/*==============================================================*/
create table PROYECTOS
(
   ID_PROYECTO          int not null,
   NOMBRE_PROYECTO      char(50) not null,
   DESCRIP_PROYECTO     char(100) not null,
   LINK_PROYECTO        varchar(100),
   primary key (ID_PROYECTO)
);

alter table CERTIFICADOS add constraint FK_OTORGA foreign key (ID_INST)
      references INSTITUCION (ID_INST) on delete restrict on update restrict;

alter table CONOCIMIENTOS add constraint FK_FORMA foreign key (ID_AREACO)
      references AREA_CONOCIMIENTO (ID_AREACO) on delete restrict on update restrict;

alter table EDUCACION add constraint FK_BRINDA foreign key (ID_INST)
      references INSTITUCION (ID_INST) on delete restrict on update restrict;

