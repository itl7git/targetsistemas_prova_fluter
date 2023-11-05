import 'package:flutter/material.dart';
import 'package:targetsistemas_prova_flutter/screens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Target Sistemas',
      theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.green)),
      home: const LoginScreen(),
    );
  }
}
