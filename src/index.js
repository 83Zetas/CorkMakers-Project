const express = require('express');
const morgan = require('morgan');
const cors = require('cors');

const rutaProductos = require('./routes/productos.routes');

const app = express();
app.use(cors());
app.use(morgan('dev'));
app.use(express.json());

app.use(rutaProductos);

app.use((err, req, res, next) =>{
    return res.json({
        message: err.message
    })
}
)
app.listen(4000);
console.log('Server on port 4000');
