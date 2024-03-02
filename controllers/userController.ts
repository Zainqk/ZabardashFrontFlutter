import { Request, Response } from 'express';
import User, { UserInterface } from '../models/userModel';
import { createAdmin, loginAdmin, forgotPass } from '../services/adminServices';
import generateResetToken from '../utils/generateResetToken';
import nodemailer from 'nodemailer';
import jwt from 'jsonwebtoken';
import generateToken from '../utils/generateToken';

// Register User
const register = async (req: Request, res: Response) => {
	const { username, email, password } = req.body;

	try {
		const result = await createAdmin({
			username,
			email,
			password,
		});

		if (result.success) {
			res.status(200).json(result);
		} else {
			res.status(500).json(result);
		}
	} catch (error) {
		console.error(error);
		res.status(500).json({
			success: false,
			message: 'Internal server error',
		});
	}
};

// Login User
const login = async (req: Request, res: Response) => {
	const { email, password } = req.body;
	try {
		const result = await loginAdmin({
			email,
			password,
		});

		if (result.success) {
			res.status(200).json(result);
		} else {
			res.status(500).json(result);
		}
	} catch (error) {
		console.error(error);
		res.status(500).json({ message: 'Internal server error' });
	}
};

// getSingleAdmin
const getSingleAdmin = async (req: Request, res: Response) => {
	const { id } = req.params;

	try {
		const user = await User.findById(id);

		if (!user) {
			return res.status(404).json({
				success: false,
				message: 'User not found',
			});
		}

		res.status(200).json({
			success: true,
			user,
		});
	} catch (error) {
		res.status(500).json({
			success: false,
			message: 'Internal server error',
		});
	}
};

// Forgot  sPassword
const forgotPassword = async (req: Request, res: Response) => {
	const { email } = req.body;

	try {
		// Check if admin with the provided email exists
		const admin = await User.findOne({ email });

		if (!admin) {
			return res.status(404).json({ message: 'User not found' });
		}

		const result = await forgotPass({
			email,
		});

		console.log('The response of email sending is:', result);

		if (result?.success) {
			res.status(200).json(result);
		} else {
			res.status(500).json(result);
		}
	} catch (error) {
		console.error(error);
		res.status(500).json({ message: 'Internal server error' });
	}
};

// Reset Password (Verify token)
const resetPassword = async (req: Request, res: Response) => {
	const { token } = req.params;
	const { newPassword, email } = req.body;

	try {
		jwt.verify(token, 'sadiqkhangmuhammadsadiq', async (err) => {
			if (err) {
				return res.status(401).json({
					success: false,
					message: 'Invalid or expired token',
				});
			}

			const user = await User.findOne({ email });

			if (!user) {
				return res.status(404).json({
					success: false,
					message: 'User not found',
				});
			}

			user.password = newPassword;
			await user.save();

			res.status(200).json({
				success: true,
				message: 'Password reset successful',
			});
		});
	} catch (error) {
		res.status(500).json({
			success: false,
			message: 'Internal server error',
		});
	}
};

//getAllAdmins
const getAllAdmins = async (req: Request, res: Response) => {
	try {
		const users = await User.find();

		res.status(200).json({
			success: true,
			users,
		});
	} catch (error) {
		res.status(500).json({
			success: false,
			message: 'Internal server error',
		});
	}
};

// updateAdmin
const updateAdmin = async (req: Request, res: Response) => {
	try {
		const updateData = req.body;
		const records = await User.findByIdAndUpdate(req.params.id, updateData, {
			new: true,
		});

		if (!records) {
			res.status(404).json({
				success: false,
				message: 'Record not found',
			});
		} else {
			res.status(200).json({
				success: true,
				message: 'User updated successfully',
			});
		}
	} catch (err) {
		res.status(500).send(err);
	}
};

// deleteAdmin
const deleteAdmin = async (req: Request, res: Response) => {
	try {
		const records = await User.findByIdAndDelete(req.params.id);
		if (!records) {
			res.status(404).json({
				success: false,
				message: 'Record not found',
			});
		} else {
			res.status(200).json({
				success: true,
				message: 'User deleted successfully',
			});
		}
	} catch (err) {
		res.status(500).send(err);
	}
};

export {
	register,
	login,
	forgotPassword,
	resetPassword,
	getSingleAdmin,
	getAllAdmins,
	updateAdmin,
	deleteAdmin,
};
