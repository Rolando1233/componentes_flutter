import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:practica3/firebase_options.dart';
import 'package:practica3/screens/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(), // Utiliza el widget SplashScreen como pantalla de inicio
    );
  }
}
