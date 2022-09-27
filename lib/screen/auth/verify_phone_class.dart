import 'package:flutter/material.dart';
import 'package:grocery/widgets/size/size_box_hight.dart';
import 'package:grocery/widgets/text/text_headline.dart';
import 'package:grocery/widgets/text/text_title_large.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

import '../../widgets/text/button_text_style.dart';

class VerifyPhoneClass extends StatefulWidget {
  const VerifyPhoneClass({Key? key}) : super(key: key);

  @override
  State<VerifyPhoneClass> createState() => _VerifyPhoneClassState();
}

class _VerifyPhoneClassState extends State<VerifyPhoneClass> {
  final phoneController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  String initialCountry = 'PK';
  PhoneNumber number = PhoneNumber(isoCode: 'PK');

  @override
  void dispose() {
    phoneController.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Theme.of(context).primaryColor,
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
                    title: 'Verify your phone number',
                  ),
                  const SizeBoxHeight(height: 30),
                  const TextHeadline(
                    title:
                        'We have sent you an SMS with a code to enter number',
                  ),
                  const SizeBoxHeight(height: 30),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(color: Colors.white, width: 1),
                    ),
                    child: InternationalPhoneNumberInput(
                      textStyle: const TextStyle(
                        color: Colors.white,
                      ),
                      inputDecoration: const InputDecoration(
                        contentPadding: EdgeInsets.all(16),
                        border: InputBorder.none,
                        hintText: '30123456789',
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        hintStyle: TextStyle(
                          color: Color(0xffD3D3D3),
                        ),
                      ),
                      onInputChanged: (PhoneNumber number) {
                        print(number.phoneNumber);
                      },
                      onInputValidated: (bool value) {
                        print(value);
                      },
                      selectorConfig: const SelectorConfig(
                        selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                      ),
                      ignoreBlank: false,
                      autoValidateMode: AutovalidateMode.disabled,
                      selectorTextStyle: const TextStyle(color: Colors.white),
                      initialValue: number,
                      textFieldController: phoneController,
                      formatInput: false,
                      keyboardType: const TextInputType.numberWithOptions(
                          signed: true, decimal: true),
                      inputBorder: InputBorder.none,
                      onSaved: (PhoneNumber number) {
                        print('On Saved: $number');
                      },
                    ),
                  ),
                  const SizeBoxHeight(height: 30),
                  const TextHeadline(
                    title: 'Or login with Social network',
                  ),
                  const SizeBoxHeight(height: 30),
                  MaterialButton(
                    padding: const EdgeInsets.all(16),
                    color: Colors.white,
                    onPressed: () {
                      // Navigator.of(context).pushNamed(Routes.tabScreen);
                    },
                    child: const ButtonTextStyle(title: 'Next'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}