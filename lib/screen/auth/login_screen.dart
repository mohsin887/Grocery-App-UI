import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:grocery/widgets/size/size_box_hight.dart';
import 'package:grocery/widgets/text/text_headline.dart';
import 'package:grocery/widgets/textformfield/text_form_field.dart';

import '../../routes/routes.dart';
import '../../widgets/text/button_text_style.dart';
import '../../widgets/text/text_title_large.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizeBoxHeight(height: 30),
                const TextTitleLarge(
                  title: 'Welcome to Grocery',
                ),
                const SizeBoxHeight(height: 30),
                const TextHeadline(
                  title: 'Login to your account',
                ),
                const SizeBoxHeight(height: 30),
                TextFormFieldWidget(
                  controller: emailController,
                  hintText: 'Email/Mobile Number',
                ),
                const SizeBoxHeight(height: 10),
                TextFormFieldWidget(
                  controller: passwordController,
                  hintText: 'Password',
                ),
                const SizeBoxHeight(
                  height: 20,
                ),
                MaterialButton(
                  padding: const EdgeInsets.all(16),
                  color: Colors.white,
                  onPressed: () {
                    Navigator.of(context).pushNamed(Routes.verifyPhoneClass);
                  },
                  child: const ButtonTextStyle(title: 'Login'),
                ),
                const SizeBoxHeight(height: 30),
                const TextHeadline(
                  title: 'Forgot your password?',
                ),
                const SizeBoxHeight(height: 30),
                RichText(
                  text: TextSpan(
                    text: "Don't have an Account?  ",
                    style: Theme.of(context).textTheme.headlineMedium,
                    children: <TextSpan>[
                      TextSpan(
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium
                            ?.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).colorScheme.secondary,
                            ),
                        text: 'Sign up',
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.of(context)
                                .pushNamed(Routes.signupScreen);
                          },
                      )
                    ],
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