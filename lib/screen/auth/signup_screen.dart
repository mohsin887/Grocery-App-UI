import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:grocery/widgets/size/size_box_hight.dart';
import 'package:grocery/widgets/text/button_text_style.dart';
import 'package:grocery/widgets/text/text_headline.dart';
import 'package:grocery/widgets/text/text_title_large.dart';
import 'package:grocery/widgets/textformfield/text_form_field.dart';

import '../../routes/routes.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final fNameController = TextEditingController();
  final lNameController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
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
                  title: 'Signup to your account',
                ),
                const SizeBoxHeight(height: 30),
                TextFormFieldWidget(
                  controller: fNameController,
                  hintText: 'First Name',
                ),
                const SizeBoxHeight(height: 10),
                TextFormFieldWidget(
                  controller: lNameController,
                  hintText: 'Last Name',
                ),
                const SizeBoxHeight(height: 10),
                TextFormFieldWidget(
                  controller: emailController,
                  hintText: 'Email ID/Phone Number',
                ),
                const SizeBoxHeight(height: 10),
                TextFormFieldWidget(
                  controller: passwordController,
                  hintText: 'Password',
                ),
                const SizeBoxHeight(height: 10),
                TextFormFieldWidget(
                  controller: confirmPasswordController,
                  hintText: 'Re-enter Password',
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
                  child: const ButtonTextStyle(title: 'Create'),
                ),
                const SizeBoxHeight(height: 30),
                RichText(
                  text: TextSpan(
                    text: "Have an account? ",
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
                        text: 'Sign in',
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.of(context).pushNamed(Routes.loginScreen);
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