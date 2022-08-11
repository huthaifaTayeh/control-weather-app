import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/auth-gate.dart';
import 'package:weather_app/pages/home/home_screen.dart';
import 'package:weather_app/utils/Binding/HomeBinding.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Control-Weather-App',
      home: AuthGate(),
    );
  }
}
