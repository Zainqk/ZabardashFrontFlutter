import 'package:flutter/material.dart';

import 'package:zabardash/widgets/auth_button.dart';

import 'package:zabardash/widgets/text_form_field.dart';

class ForgotPasswordScreen extends StatelessWidget {
  static const String routeName = '/forgotPassword';

  static Route route() {
    return MaterialPageRoute(
        builder: (_) => const ForgotPasswordScreen(),
        settings: const RouteSettings(name: routeName));
  }

  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController userNameController = TextEditingController();
    TextEditingController phoneNumberController = TextEditingController();
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                const SizedBox(
                  height: 100,
                ),
                Text(
                  'Forgot Password?',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                SizedBox(
                  width: 259,
                  height: 80,
                  child: Text(
                    "Enter your existing email to change your password",
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                          fontWeight: FontWeight.w300,
                          fontSize: 15,
                        ),
                    maxLines: 2,
                    textAlign: TextAlign.center,
                  ),
                ),
                AuthFormField(
                    hintText: 'example@gmail.com',
                    labelText: 'email',
                    fieldController: emailController,
                    isPassword: false),
                const SizedBox(height: 40),
                const AuthBtn(labelText: 'Continue'),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
