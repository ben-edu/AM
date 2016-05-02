create database alertmovil;
use alertmovil;

CREATE TABLE empleado (
  id_empleado int NOT NULL AUTO_INCREMENT,
  nombre_empleado varchar(20) NOT NULL,
  apellido_p_empleado varchar(20) not null,
  apellido_m_empleado varchar(20) not null,
  telefono_empleado bigint,
  fecha_nac datetime,
  contraseña varchar(20) NOT NULL,
  estatus enum('activo','inactivo'),
  PRIMARY KEY (id_empleado)
);

create table hospital(
id_hospital int not null auto_increment,
usuario varchar(25) not null,
contrasenia varchar(40),
nombre varchar(50),
direccion varchar(50),
codigo_postal int,
primary key (id_hospital)
);

create table consultorio(
id_consultorio int not null auto_increment,
no_consultorio int not null,
area varchar(30) not null,
especialidad varchar(40),
PRIMARY KEY (id_consultorio)
);


CREATE TABLE doctor (
  id_doctor int NOT NULL AUTO_INCREMENT,
  nombre_doctor varchar(20) NOT NULL,
  apellido_p_doctor varchar(20) not null,
  apellido_m_doctor varchar(20) not null,
  cedula bigint,
  telefono bigint,
  estatus enum('activo','inactivo'),
  fecha_nac datetime,
  especialidad varchar(30) not null,
  descripcion varchar(100) NOT NULL,
  idf_consultorio int not null,
  PRIMARY KEY (id_doctor),
  FOREIGN key (idconsultorio) REFERENCES consultorio(id_consultorio)
) ;

CREATE TABLE paciente (
  id_paciente int NOT NULL AUTO_INCREMENT,
  nombre_paciente varchar(50) NOT NULL,
  domicilio varchar(50) NOT NULL,
  codigo_postal int NOT NULL,
  colonia varchar(20) NOT NULL,
  municipio varchar(20) NOT NULL,
  estado varchar(20) NOT NULL,
  email varchar(30) NOT NULL,
  numero_tel bigint not null,
  no_afiliacion bigint not null,
  idf_consultorio int not null,
  PRIMARY KEY (id_paciente),
  FOREIGN key (id_consultorio) REFERENCES consultorio(id_consultorio)
);




create table citas(
id_cita int not null auto_increment,
idf_doctor int not null,
idf_paciente int not null,
idf_consultorio int not null,
idf_estatus int not null,
fecha datetime,
estatus enum('concretada','no concretada')NOT NULL,
PRIMARY KEY (id_cita),
FOREIGN KEY (id_doctor) REFERENCES doctor (id_doctor),
FOREIGN KEY (id_paciente) REFERENCES paciente (id_paciente),
FOREIGN KEY (id_consultorio) REFERENCES consultorio (id_consultorio),
FOREIGN KEY (id_estatus) REFERENCES estatus (id_estatus)
);