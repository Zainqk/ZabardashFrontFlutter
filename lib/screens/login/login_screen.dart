import 'package:flutter/material.dart';
import 'package:zabardash/config/theme.dart';

class LoginScreen extends StatelessWidget {
  static const String routeName = '/login';

  static Route route() {
    return MaterialPageRoute(
        builder: (_) => LoginScreen(),
        settings: const RouteSettings(name: routeName));
  }

  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            AuthFormField(
              fieldController: emailController,
              hintText: 'example@gmail.com',
              labelText: 'E-mail',
              isPassword: false,
            ),
            const SizedBox(
              height: 20,
            ),
            AuthFormField(
              fieldController: passwordController,
              hintText: 'Enter your password',
              labelText: 'Password',
              isPassword: true,
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              child: TextButton(
                onPressed: () {},
                child: const Text('Login'),
              ),
            )
          ],
        ),
      ),
    ));
  }
}

class AuthFormField extends StatefulWidget {
  const AuthFormField({
    super.key,
    required this.hintText,
    required this.labelText,
    required this.fieldController,
    required this.isPassword,
  });

  final TextEditingController fieldController;
  final String hintText;
  final String labelText;
  final bool isPassword;

  @override
  State<AuthFormField> createState() => _AuthFormFieldState();
}

class _AuthFormFieldState extends State<AuthFormField> {
  @override
  Widget build(BuildContext context) {
    bool isVisible = false;
    return TextFormField(
      style: const TextStyle(fontSize: 18),
      controller: widget.fieldController,
      cursorColor: Colors.black87,
      decoration: InputDecoration(
        suffixIcon: widget.isPassword
            ? IconButton(
                enableFeedback: false,
                onPressed: () {
                  isVisible = !isVisible;
                },
                icon: Icon(
                  isVisible == false
                      ? Icons.visibility_outlined
                      : Icons.visibility_off_outlined,
                  size: 23,
                ),
              )
            : null,
        contentPadding:
            const EdgeInsets.only(top: 12, left: 25, right: 10, bottom: 15),
        border: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Color.fromARGB(255, 158, 217, 8),
          ),
          borderRadius: BorderRadius.circular(30),
        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        isDense: true,
        labelText: widget.labelText,
        hintText: widget.hintText,
        hintStyle: const TextStyle(
          fontWeight: FontWeight.w300,
          fontSize: 17,
          color: Colors.black,
        ),
        labelStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
          color: Colors.black,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
              color: Color.fromARGB(255, 158, 217, 8), width: 2),
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }
}
