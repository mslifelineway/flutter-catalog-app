import 'package:demo/pages/carts.dart';
import 'package:demo/pages/catalogs.dart';
import 'package:demo/utils/routes.dart';
import "package:flutter/material.dart";

import './pages/home_page.dart';
import './pages/login_page.dart';
import './pages/portfolio.dart';

import "./widgets/themes.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // themeMode: ThemeMode.light,
      themeMode: ThemeMode.dark,
      theme: AppTheme.lightTheme(context),
      darkTheme: AppTheme.darkTheme(context),
      initialRoute: AppRoutes.root,
      routes: {
        AppRoutes.root: (context) => const Catalogs(),
        AppRoutes.home: (context) => const Home(),
        AppRoutes.login: (context) => const Login(),
        AppRoutes.portfolio: (context) => const Portfolio(),
        AppRoutes.carts: (context) => const Carts(),
      },
    );
  }
}
