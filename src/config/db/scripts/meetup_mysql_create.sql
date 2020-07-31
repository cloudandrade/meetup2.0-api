CREATE SCHEMA `meetup`;

USE `meetup`;

CREATE TABLE `jovem` (
	`id` int NOT NULL AUTO_INCREMENT,
	`companhia_id` int,
	`nome` varchar(255) NOT NULL,
	`telefone` varchar(255),
	`idade` int NOT NULL,
	`id_ala` int,
	`membro` BOOLEAN NOT NULL,
	`cmis` varchar(255),
	`sexo` char NOT NULL,
	`usuario_id` bigint NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `companhia` (
	`id` int NOT NULL AUTO_INCREMENT,
	`nome` varchar(255) NOT NULL,
	`descricao` varchar(255) NOT NULL,
	`capacidade` int NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `logistica` (
	`id` int NOT NULL AUTO_INCREMENT,
	`setor_id` int NOT NULL,
	`id_ala` int,
	`nome` varchar(255) NOT NULL,
	`sexo` char NOT NULL,
	`usuario_id` bigint NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `setor` (
	`id` int NOT NULL AUTO_INCREMENT,
	`nome` varchar(255) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `usuario` (
	`id` int NOT NULL AUTO_INCREMENT,
	`perfil_id` int NOT NULL,
	`email` varchar(255) NOT NULL,
	`senha` varchar(255) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `perfil` (
	`id` int NOT NULL AUTO_INCREMENT,
	`tipo` varchar(255) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `estaca` (
	`id` int NOT NULL AUTO_INCREMENT,
	`nome` varchar(255) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `ala` (
	`id` int NOT NULL AUTO_INCREMENT,
	`nome` varchar(255) NOT NULL,
	`estaca_id` int NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Admin` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`nome` varchar(255) NOT NULL,
	`chamado_cargo` varchar(255) NOT NULL,
	`usuario_id` bigint(255) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `consultor` (
	`id` int NOT NULL AUTO_INCREMENT,
	`companhia_id` int,
	`nome` varchar(255) NOT NULL,
	`telefone` varchar(255),
	`idade` int NOT NULL,
	`id_ala` int,
	`sexo` char NOT NULL,
	`usuario_id` bigint NOT NULL,
	PRIMARY KEY (`id`)
);