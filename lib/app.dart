import 'package:flutter/material.dart';
import 'package:task5/presentation/screen/home_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Task',
      home:HomeScreen(),
    );
  }
}
