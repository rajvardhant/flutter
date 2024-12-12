import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:google_fonts/google_fonts.dart';
import 'package:startgit/pages/cart_page.dart';
import 'package:startgit/pages/home_page.dart';
import 'package:startgit/pages/login_page.dart';

// import 'package:startgit/pages/login_page.dart';
import 'package:startgit/utils/routes.dart' ;
import 'package:startgit/widgets/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      // home: HomePage(),
      themeMode: ThemeMode.light,
      theme:MyTheme.lightTheme,
      darkTheme:MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/":(context) => const LoginPage(),
        MyRoutes.homeRoute:(context) => const HomePage(),
        MyRoutes.loginRoute: (context) => const LoginPage(),
        MyRoutes.cartRoute: (context) => const CartPage()
      },
    );
  }
}
