const db = require('../config/db/db');
const { STRING, INTEGER } = require('sequelize');

const Ala = db.sequelize.define(
	'ala',
	{
		nome: {
			type: STRING,
			required: true,
		},
		estaca_id: {
			type: INTEGER,
			required: true,
		},
	},
	{
		freezeTableName: true,
		timestamps: false,
		modelName: 'Ala',
		tableName: 'ala',
	}
);

/*Ala.sync({
    force: true
})*/
module.exports = Ala;
