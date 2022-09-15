import 'package:accounting_app_mobile/lib/presentation/pages/auth/register.dart';
import 'package:flutter/material.dart';

// import 'lib/presentation/pages/home/splash_screen.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "+Walletline",
    home: App(),
  ));
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Register();
  }
}
