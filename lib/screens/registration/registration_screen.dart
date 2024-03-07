import 'package:flutter/material.dart';

import 'package:zabardash/widgets/auth_button.dart';

import 'package:zabardash/widgets/text_form_field.dart';

class RegistrationScreen extends StatelessWidget {
  static const String routeName = '/register';

  static Route route() {
    return MaterialPageRoute(
        builder: (_) => const RegistrationScreen(),
        settings: const RouteSettings(name: routeName));
  }

  const RegistrationScreen({super.key});

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
                  'Get Started',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                Text(
                  "You'll receive order updates & receipts",
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall!
                      .copyWith(fontWeight: FontWeight.w300, fontSize: 15),
                ),
                const SizedBox(
                  height: 30,
                ),
                AuthFormField(
                  hintText: 'Enter your name',
                  labelText: 'Name',
                  fieldController: userNameController,
                  isPassword: false,
                ),
                const SizedBox(
                  height: 25,
                ),
                AuthFormField(
                  hintText: "(+1) | 123-4567",
                  labelText: 'Phone Number',
                  fieldController: phoneNumberController,
                  isPassword: false,
                ),
                const SizedBox(
                  height: 25,
                ),
                AuthFormField(
                  hintText: 'example@gmail.com',
                  labelText: 'Email',
                  fieldController: emailController,
                  isPassword: false,
                ),
                const SizedBox(
                  height: 25,
                ),
                AuthFormField(
                  hintText: 'Enter your password',
                  labelText: 'Password',
                  fieldController: passwordController,
                  isPassword: true,
                ),
                const SizedBox(
                  height: 45,
                ),
                const AuthBtn(
                  labelText: 'Continue',
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        bottom: 55,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Already Have An Account?",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pushNamed(
                                context,
                                '/login',
                              );
                            },
                            child: Text(
                              'Login',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  color: Theme.of(context).primaryColorDark),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
