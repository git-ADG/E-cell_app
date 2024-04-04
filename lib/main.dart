import 'package:ecell_app/configs/configs.dart';
import 'package:ecell_app/pages/collabs_page/collabs_page.dart';
import 'package:ecell_app/pages/login_page/login_page.dart';
import 'package:ecell_app/pages/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'pages/pages.dart';

void main() {
  runApp(const ECellApp());
}

class ECellApp extends StatelessWidget {
  const ECellApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "E-Cell App",
      theme: darkTheme,
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      routes: {
        LoginPage.routeName: (context) => const LoginPage(),
        HomePage.routeName: (context) => const HomePage(),
        SplashScreen.routeName: (context) => const SplashScreen(),
        CollabPage.routeName: (context) => const CollabPage(),
      },
      initialRoute: LoginPage.routeName,
      // initialRoute: CollabPage.routeName,
    );
  }
}
