DROP DATABASE IF EXISTS ficha_datos_personales;
CREATE DATABASE ficha_datos_personales;

use ficha_datos_personales;

CREATE TABLE `personal` (
  `id` integer PRIMARY KEY AUTO_INCREMENT,
  `nombres` varchar(255) NOT NULL,
  `apellidos` varchar(255) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `edad` integer NOT NULL,
  `sexo` char(1) NOT NULL,
  `estado_civil` varchar(255) NOT NULL,
  `ciudad_nacimiento` varchar(255) NOT NULL,
  `id_tipo_documento` integer NOT NULL,
  `numero_documento` integer NOT NULL,
  `cantidad_hijos` integer NOT NULL,
  `discapacidad` boolean NOT NULL,
  `tipo_discapacidad` varchar(255) NOT NULL,
  `departamento` varchar(255) NOT NULL,
  `telefono_casa` varchar(255),
  `celular` varchar(255),
  `email` varchar(255),
  `nombre_contacto` varchar(255),
  `parentesco` varchar(255),
  `telefono_contacto` varchar(255),
  `id_grado_academico` integer NOT NULL,
  `id_referencia` integer,
  `id_ubigeo` integer NOT NULL,
  `id_contrato` integer NOT NULL,
  `created_at` timestamp DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE `familiar` (
  `id` integer PRIMARY KEY AUTO_INCREMENT,
  `id_parentesco` integer NOT NULL,
  `nombres` varchar(255) NOT NULL,
  `apellidos` varchar(255) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `edad` integer NOT NULL,
  `sexo` varchar(255) NOT NULL,
  `centro_estudio_o_trabajo` varchar(255) NOT NULL,
  `ocupacion` varchar(255) NOT NULL,
  `dependencia_economica` boolean NOT NULL,
  `id_personal` integer NOT NULL
);

CREATE TABLE `grado_academico` (
  `id` integer PRIMARY KEY AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `id_nivel_grado_academico` integer NOT NULL
);

CREATE TABLE `nivel_grado_academico` (
  `id` integer PRIMARY KEY AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL
);

CREATE TABLE `experiencia_profesional` (
  `id` integer PRIMARY KEY AUTO_INCREMENT,
  `fecha_ingreso` date,
  `fecha_cese` date,
  `ultima_remuneracion` decimal(10,2),
  `jefe_inmediato` varchar(255),
  `motivo_desvinculacion` varchar(255)
);

CREATE TABLE `referencia` (
  `id` integer PRIMARY KEY AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL
);

CREATE TABLE `personal_experiencia_profesional` (
  `id` integer PRIMARY KEY AUTO_INCREMENT,
  `id_personal` integer,
  `id_experiencia_profesional` integer
);

CREATE TABLE `tipo_documento` (
  `id` integer PRIMARY KEY AUTO_INCREMENT,
  `nombre` varchar(255)
);

CREATE TABLE `parentesco` (
  `id` integer PRIMARY KEY AUTO_INCREMENT,
  `nombre` varchar(255)
);

CREATE TABLE `ubigeo` (
  `id` integer PRIMARY KEY AUTO_INCREMENT,
  `codigo_ubigeo` varchar(255),
  `departamento` varchar(255),
  `provincia` varchar(255),
  `distrito` varchar(255)
);

CREATE TABLE `contrato` (
  `id` integer PRIMARY KEY AUTO_INCREMENT,
  `gerencia` varchar(255) NOT NULL,
  `id_area` integer NOT NULL,
  `id_puesto` integer NOT NULL,
  `fecha_inicio` varchar(255) NOT NULL,
  `reingreso` boolean NOT NULL,
  `salario` decimal(10,2) NOT NULL,
  `bono` boolean NOT NULL,
  `monto_bono` decimal(10,2) NOT NULL,
  `observaciones` varchar(255) NOT NULL,
  `evaluacion` varchar(255) NOT NULL,
   `created_at` timestamp DEFAULT CURRENT_TIMESTAMP
);

ALTER TABLE `familiar` ADD FOREIGN KEY (`id_personal`) REFERENCES `personal` (`id`);

ALTER TABLE `personal` ADD FOREIGN KEY (`id_grado_academico`) REFERENCES `grado_academico` (`id`);

ALTER TABLE `personal_experiencia_profesional` ADD FOREIGN KEY (`id_personal`) REFERENCES `personal` (`id`);

ALTER TABLE `personal_experiencia_profesional` ADD FOREIGN KEY (`id_experiencia_profesional`) REFERENCES `experiencia_profesional` (`id`);

ALTER TABLE `personal` ADD FOREIGN KEY (`id_referencia`) REFERENCES `referencia` (`id`);

ALTER TABLE `personal` ADD FOREIGN KEY (`id_tipo_documento`) REFERENCES `tipo_documento` (`id`);

ALTER TABLE `familiar` ADD FOREIGN KEY (`id_parentesco`) REFERENCES `parentesco` (`id`);

ALTER TABLE `personal` ADD FOREIGN KEY (`id_ubigeo`) REFERENCES `ubigeo` (`id`);

ALTER TABLE `grado_academico` ADD FOREIGN KEY (`id_nivel_grado_academico`) REFERENCES `nivel_grado_academico` (`id`);

ALTER TABLE `personal` ADD FOREIGN KEY (`id_contrato`) REFERENCES `contrato` (`id`);
