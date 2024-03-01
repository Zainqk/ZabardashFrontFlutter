import mongoose from 'mongoose';
require('dotenv').config();
const connectDb = async () => {
	try {
		await mongoose.connect(
			`mongodb+srv://user:${process.env.DB_PASSWORD}@cluster0.ybutdar.mongodb.net/`,
			{
				useNewUrlParser: true,
				useUnifiedTopology: true,
			} as Parameters<typeof mongoose.connect>[1]
		);
		console.log('MongoDb is connected');
	} catch (error: any) {
		console.log(error.message);
	}
};

export default connectDb;
