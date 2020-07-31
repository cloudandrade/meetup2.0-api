const { Router } = require('express');
//const Auth = require('../controllers/authController');
//const { checkAuthorization } = require('../services/auth');
const estacaController = require('../controllers/estacaController');

const routes = Router();

routes.get('/', (req, res) => {
	res.send('Server Running');
});

//routes.post('/auth/', Auth.auth);

/* routes.get('/auth/verify/', checkAuthorization, async (req, res) => {
	res.json({
		error: null,
		data: {
			message: 'Autorizado com sucesso',
		},
	});
}); */

//Test Routes Estacas
routes.post('/estacas', estacaController.create);
routes.get('/estacas', estacaController.list);
//routes.get('/estacas/:id', checkAuthorization, estacasController.index);

module.exports = routes;
