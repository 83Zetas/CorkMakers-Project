const { Router } = require('express');
const { getAllProducts, getOneProduct, createAProduct, deleteProduct, updateProduct } = require('../controllers/productos.controller')


const router = Router();

router.get('/productos', getAllProducts)
router.get('/productos/:id', getOneProduct);
router.post('/productos', createAProduct);
router.delete('/productos/:id', deleteProduct);
router.put('/productos/:id', updateProduct);

module.exports = router;