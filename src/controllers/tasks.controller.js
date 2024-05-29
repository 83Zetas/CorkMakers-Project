
const { request } = require("express");
const pool = require("../config/database")

const getAllProducts = async (req, res, next) => {
    const productos = await pool.query('SELECT * FROM productos')
    try {
        res.json(productos.rows);
    } catch (error) {
        next(error);
    }

};

const getOneProduct = async (req, res, next) => {
    const { id } = req.params;
    try {
        const result = await pool.query('SELECT * FROM productos WHERE id = $1', [
            id
        ]);
        if (result.rows.length === 0) return res.status(404).json({
            message: "Producto no encontrado",
        });
        res.json(result.rows[0]);
    } catch (error) {
        next(error);
    }

}

const createAProduct = async (req, res, next) => {
    const { nombre, descripcion } = req.body;
    try {
        const result = await pool.query('INSERT INTO productos (nombre, descripcion) VALUES ($1, $2) RETURNING *', [
            nombre,
            descripcion,
        ]);
        res.json(result.rows[0]);
    } catch (error) {
        next(error);
    }
}

const deleteProduct = async (req, res, next) => {
    const { id } = req.params;
    try {
        const result = await pool.query('DELETE FROM productos WHERE id = $1', [id]);
        if (result.rowCount === 0) return res.status(404).json({
            message: "Producto no encontrado"
        });
        return res.sendStatus(204);
    } catch (error) {
        next(error);
    }

}

const updateProduct = async (req, res, next) => {
    const { id } = req.params;
    const { nombre, descripcion } = req.body;

    try {
        const result = await pool.query('UPDATE productos set nombre = $1, descripcion = $2 WHERE id = $3 RETURNING *', [
            nombre,
            descripcion,
            id
        ]);
    
        if (result.rowCount === 0) return res.status(404).json({
            message: "Producto no encontrado"
        });

        return res.json(result.rows[0]);
    } catch (error) {
        next(error);
    }

}










module.exports = {
    getAllProducts,
    getOneProduct,
    createAProduct,
    deleteProduct,
    updateProduct
}