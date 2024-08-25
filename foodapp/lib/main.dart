// ignore_for_file: prefer_const_constructors, unused_import

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:foodapp/firebase_options.dart';
import 'package:foodapp/pages/BottomNav.dart';
import 'package:foodapp/pages/Homepage.dart';
import 'package:foodapp/pages/LoginPage.dart';
import 'package:foodapp/pages/OnBoard.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnBoard(),
    );
  }
}
