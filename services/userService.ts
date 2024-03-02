import UserModal, { UserInterface } from '../models/userModel';
import generateToken from '../utils/generateToken';
import generateResetToken from '../utils/generateResetToken';
import nodemailer from 'nodemailer';
import jwt from 'jsonwebtoken';

interface createAdminInput {
	username: string;
	email: string;
	password: string;
}
interface loginAdminInput {
	email: string;
	password: string;
}
interface forgotPassInput {
	email: string;
}

const createAdmin = async ({ username, email, password }: createAdminInput) => {
	try {
		// Check if admin with the given email already exists
		const existingAdmin = await UserModal.findOne({ email });

		if (existingAdmin) {
			return {
				success: false,
				message: 'Admin already exists with the same email',
			};
		}

		const newAdmin = await UserModal.create({
			username,
			email,
			password,
		});

		return { success: true, admin: newAdmin };
	} catch (error) {
		console.error(error);
		return { success: false, message: 'Internal server error' };
	}
};

const loginAdmin = async ({ email, password }: loginAdminInput) => {
	try {
		const admin = await UserModal.findOne({ email });

		if (!admin) {
			// Admin not found
			return { success: false, message: 'Admin not found' };
		}

		const isPasswordValid = await admin.comparePassword(password);

		if (!isPasswordValid) {
			// Invalid password
			return { success: false, message: 'Invalid password' };
		}

		const token = generateToken({ email: admin.email });

		return { success: true, admin: { email: admin.email, token } };
	} catch (error) {
		console.error(error);
		return { success: false, message: 'Internal server error' };
	}
};
const forgotPass = async ({ email }: forgotPassInput) => {
	try {
		// Generate a reset token
		const resetToken = await generateResetToken({ email });

		if (!resetToken) {
			return { success: false, message: 'Error generating reset token' };
		}

		// Create a transporter for sending emails
		const transporter = nodemailer.createTransport({
			service: 'gmail',
			auth: {
				user: 'sadiqmuhammad795@gmail.com',
				pass: 'xojgxerfrcgzuvkb',
			},
		});

		// Compose the email
		const mailOptions = {
			from: 'sadiqmuhammad795@gmail.com',
			to: email,
			subject: 'Password Reset',
			text: `Click the following link to reset your password: http://localhost:4000/reset-password/${resetToken}`,
		};

		// Send the email
		const info = await transporter.sendMail(mailOptions);

		console.log('Email sent: ' + info.response);

		return { success: true, message: 'Reset link sent to your email' };
	} catch (error) {
		console.error(error);
		return { success: false, message: 'Internal server error' };
	}
};

export { createAdmin, loginAdmin, forgotPass };
