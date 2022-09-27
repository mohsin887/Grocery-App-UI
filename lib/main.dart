import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:grocery/routes/navigation_service.dart';
import 'package:grocery/routes/routes.dart';
import 'package:grocery/screen/auth/login_screen.dart';
import 'package:grocery/widgets/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: NavigationService.navigatorKey,
      debugShowCheckedModeBanner: false,
      title: 'Grocery',
      theme: themeData(context),
      routes: Routes.getRoutes(),
      initialRoute: Routes.loginScreen,
      onGenerateRoute: (settings) {
        if (kDebugMode) {
          print(settings.arguments);
        }
        return null;
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(
          builder: (ctx) => const LoginScreen(),
        );
      },
    );
  }
}