import 'package:coinwarden/auth/intro_page.dart';
import 'package:coinwarden/auth/login_page.dart';
import 'package:coinwarden/auth/signup_page.dart';
import 'package:coinwarden/dashboard/dashboard.dart';
import 'package:coinwarden/dashboard/tutorial.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: IntroPage(),
      routes: {
        '/intro': (context) => const IntroPage(),
        '/login': (context) => const LoginPage(),
        '/signup': (context) => const SignupPage(),
        '/dashboard': (context) => const DashboardPage(),
        '/tutorial': (context) => const TutorialPage(),
      }
    );
  }
}
