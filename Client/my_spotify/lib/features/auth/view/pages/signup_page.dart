import 'package:flutter/material.dart';
import 'package:my_spotify/core/theme/app_pallette.dart';
import 'package:my_spotify/home/main.dart';
import '../../widgets/custom_field.dart';
import '../../widgets/auth_gradient_button.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Sign-oops.',
                  style: TextStyle(
                      fontSize: 50,
                      color: Colors.white,
                      fontWeight: FontWeight.bold)),
              SizedBox(height: MediaQuery.of(context).size.height * 0.04),
              CustomField(
                  hintText: 'fill your name',
                  labelText: 'Tên',
                  controller: nameController),
              SizedBox(height: MediaQuery.of(context).size.height * 0.04),
              CustomField(
                  hintText: 'your e-mail',
                  labelText: 'Mail',
                  controller: emailController),
              SizedBox(height: MediaQuery.of(context).size.height * 0.04),
              CustomField(
                hintText: 'your password',
                labelText: 'Password',
                controller: passwordController,
                isObscureText: true,
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              AuthGradientButton(),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              RichText(
                text: TextSpan(
                    text: 'or you already have one? ',
                    style: Theme.of(context).textTheme.titleMedium,
                    children: const <TextSpan>[
                      TextSpan(
                          text: ' Sign-in',
                          style: TextStyle(
                              color: Pallete.gradient3,
                              fontWeight: FontWeight.bold)),
                    ]),
              ),
            ],
          ),
        ));
  }
}
