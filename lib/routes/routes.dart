import 'package:grocery/screen/auth/login_screen.dart';
import 'package:grocery/screen/auth/signup_screen.dart';
import 'package:grocery/screen/auth/verify_phone_class.dart';

class Routes {
  static const loginScreen = '/loginScreen';
  static const signupScreen = '/signupScreen';
  static const verifyPhoneClass = '/verifyPhoneClass';

  static getRoutes() {
    return {
      loginScreen: (context) => const LoginScreen(),
      signupScreen: (context) => const SignupScreen(),
      verifyPhoneClass: (context) => const VerifyPhoneClass(),
    };
  }
}