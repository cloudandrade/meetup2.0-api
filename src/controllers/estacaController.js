const Estaca = require('../models/Estaca');
const Logger = require('../services/logger_service');
const logger = new Logger('server');
const { sequelize } = require('../config/db/db');

//método responsavel pela criação
exports.create = async (req, res) => {
	logger.info('Route - Criação de Estaca'); //
	let newEstaca = req.body; //pegando a requisição que vem da web e instanciando em forma de objeto

	if (!newEstaca.nome) {
		//verificando se os dados estão incompletos
		res.status(400).send('O campo nome não pode ficar vazio');
		// http status 400 - bad request - quando algum campo está com problema
	}

	try {
		let payload = await Estaca.create(newEstaca);
		let response = { sucess: true, payload };
		return res.send(response);
	} catch (error) {
		let payload = 'Falha ao cadastrar estaca';
		logger.error(payload, error);
		let response = { sucess: false, payload };
		res.status(500).send(response);
		// http status 500 - internal server error - algum erro inesperado ou erro de programaçao
	}
};

//método resbonsável por buscar uma
exports.index = async (req, res) => {
	logger.info('Route - Busca de Estaca');
	const { id } = req.params;

	try {
		let estaca = await Estaca.findOne({ where: { id: id } }); //busca uma estaca onde o id for igual ao passado
		let payload = estaca;
		let response = { sucess: true, payload };
		if (!estaca.length) {
			//se não encontrou nenhuma estaca com essa id
			response = {
				sucess: true,
				payload: 'Estaca não encontrada',
			};
			return res.status(404).send(response);
		}
		res.send(response);
	} catch (error) {
		let payload = 'Erro ao buscar estaca';
		logger.error(payload, error);
		const response = { sucess: false, payload };
		res.status(500).send(response);
		// http status 500 - internal server error - algum erro inesperado ou erro de programaçao
	}
};

//método responsável pela listagem
exports.list = async (req, res) => {
	logger.info('Route - Listagem de estacas');

	try {
		const estacas = await Estaca.findAll();
		let payload = estacas;
		let response = { sucess: true, payload };
		if (!estacas.length) {
			response = {
				sucess: true,
				payload: 'Não existem estacas',
			};
			return res.status(404).send(response);
		}
		return res.send(response);
	} catch (error) {
		let payload = 'Falha ao buscar estacas';
		logger.error(payload, error);
		let response = { sucess: false, payload };
		res.status(500).send(response);
	}
};

//método de exclusão
exports.destroy = async (req, res) => {
	const { id } = req.params;
	const estaca = await Estaca.findOne({ where: { id: id } });

	//verificando se a estaca realmente existe
	if (!estaca.length) {
		response = {
			sucess: true,
			payload: 'A estaca não existe',
		};
		return res.status(404).send(response);
	}

	Estaca.destroy({
		where: {
			id: id,
		},
	})
		.then(() => {
			response = {
				sucess: true,
				payload: 'estaca excluída dos registros',
			};
			return res.status(204).send(response);
		})
		.catch((error) => {
			response = {
				sucess: false,
				payload: 'falha ao excluir estaca',
			};
			logger.error(response.payload, error);
			return res.status(500).send(response);
		});
};
