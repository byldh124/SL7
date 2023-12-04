import 'package:flutter/material.dart';
import 'package:pokemon/screens/poke_list_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        child: PokeList(),
      ),
    );
  }
}
