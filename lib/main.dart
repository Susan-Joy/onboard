// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:first/pages/create_account_page.dart';
import 'package:first/pages/onboarding_page.dart';
import 'package:first/pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Digital Empowerment',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromRGBO(0, 16, 247, 1),
        ),
        useMaterial3: true,
      ),
      home: const CreateAccountPage(), // Change this to LoginPage() if needed
    );
  }
}
