const express = require('express');
const cors = require('cors');
const routes = require('./routes/routes');
const swaggerUI = require('swagger-ui-express');
const swaggerDocument = require('../swagger.json');

const app = express();

app.use(cors());

app.use(express.json());

app.use('/api-docs', swaggerUI.serve, swaggerUI.setup(swaggerDocument));

app.use(routes);

module.exports = app;