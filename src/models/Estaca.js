const db = require('../config/db/db');
const { STRING, INTEGER } = require('sequelize');

const Estaca = db.sequelize.define(
	'estaca',
	{
		nome: {
			type: STRING,
			required: true,
		},
	},
	{
		freezeTableName: true,
		timestamps: false,
		modelName: 'Estaca',
		tableName: 'estaca',
	}
);

/*Estaca.sync({
    force: true
})*/
module.exports = Estaca;
