import express from 'express';
import cors from 'cors';
import dotenv from 'dotenv';
import { pool } from './config/db.js';
import medicineRoutes from './routes/medicine.routes.js';

dotenv.config();
const app = express();

app.use(cors());
app.use(express.json());

// Ruta de prueba de base de datos
app.get('/api/test-db', async (req, res) => {
    try {
        const [rows] = await pool.query('SELECT 1 + 1 AS result');
        res.json({ message: 'Conexión exitosa a MySQL de Laragon', result: rows[0].result });
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
});

// Rutas de medicamentos
app.use('/api', medicineRoutes);

const PORT = process.env.PORT || 4000;
app.listen(PORT, () => {
    console.log(`Servidor corriendo en el puerto ${PORT}`);
});