import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:wisatacandi/screens/profile_screen.dart';
import 'data/candi_data.dart';
import 'package:wisatacandi/models/candi.dart';
=======
import 'package:wisatacandi/data/candi_data.dart';
>>>>>>> f2380cf68b45fc35feca82f2a40f110ac81d9c67
import 'package:wisatacandi/screens/detail_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  //This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wisata Candi',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ProfileScreen(),
      //home: DetailScreen(candi: candiList[0]),

    );
  }
}