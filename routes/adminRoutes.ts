import express from 'express';
import {
	register,
	login,
	forgotPassword,
	resetPassword,
	getSingleAdmin,
	getAllAdmins,
	updateAdmin,
	deleteAdmin,
} from '../controllers/adminController';
const router = express.Router();
import authenticateAdmin from '../middleware/authenticateAdmin';

router.post('/login', login);
router.post('/register', register);
router.post('/forgotPassword', forgotPassword);
router.post('/resetPassword/:token', resetPassword);
router.get('/getAllAdmins', getAllAdmins);
router.get('/getSingleAdmin/:id', getSingleAdmin);

router.put('/updateAdmin/:id', updateAdmin);
router.delete('/deleteAdmin/:id', deleteAdmin);

export default router;
