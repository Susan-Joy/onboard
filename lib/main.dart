import 'package:flutter/material.dart';
import 'package:first/pages/onbording_page.dart';
void main()
{
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
          seedColor: const Color.fromRGBO(
            0, 
          16, 
          247, 
          1,
          ),
        ),
        useMaterial3: true,
      ),
      home: OnbordingPage(),
    );
  }
}