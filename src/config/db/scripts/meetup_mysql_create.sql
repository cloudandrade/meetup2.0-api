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

--insert into medico (nome, email, senha) values ('Roberto Miranda', 'admin@admin.com','$2a$08$IlSG4lrXtDfWV5nprqvEMOS8upzN3e8THUR5EKKbnbNGU/5KSDpt2');
--insert into endereco (logradouro, numero, bairro, cidade) values ('rua das margaridas', 36, 'vale do limoreiro', 'salvador');
--insert into paciente (nome, idade, telefone, endereco_id, email, senha ) values ('João Claudio Andrade', 28, 71986712633, 1, 'claudio@gmail.com', '1234567');
--insert into endereco (logradouro, numero, bairro, cidade) values ('rua jardim das margaridas', 33, 'itapoã', 'salvador');
--insert into paciente (nome, idade, telefone, endereco_id, email, senha ) values ('Joana Simões', 36, 71958623458, 2, 'joanasims@gmail.com', '1234567');
--insert into endereco (logradouro, numero, bairro, cidade) values ('travessa da taboca', 11, 'vale dos rios', 'salvador');
--insert into paciente (nome, idade, telefone, endereco_id, email, senha ) values ('Juliano Silva', 48, 71945782134, 3, 'julianoss@gmail.com', '1234567');
--insert into endereco (logradouro, numero, bairro, cidade) values ('av brasiliana', 142, 'cabula', 'salvador');
--insert into paciente (nome, idade, telefone, endereco_id, email, senha ) values ('Alex Souza', 50, 7198671263, 4, 'alexus@gmail.com', '1234567');