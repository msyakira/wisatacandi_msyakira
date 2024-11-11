import 'package:flutter/material.dart';
import 'package:wisatacandi/widgets/item_card.dart';

import '../data/candi_data.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // TODO: 1. Buat appbar dengan judul Wisata Candi
      appBar: AppBar(title: Text('Wisata Candi'),),
      // TODO: 2. Buat body dengan GridView.builder
      body: GridView.builder(
        padding: EdgeInsets.all(8),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: candiList.length,
        itemBuilder: (context, index){
          return ItemCard(candi: candiList[index]);
        },
      ),
      // TODO: 3. Buat ItemCard sebagai return vale dari GridView.builder
    );
  }
}