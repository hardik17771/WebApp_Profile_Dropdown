import 'package:flutter/material.dart';
import 'package:webapp_dropdown/UI/profile_page.dart';

import 'UI/generate_card.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'task',
      home: ProfilePage(),
    );
  }
}

