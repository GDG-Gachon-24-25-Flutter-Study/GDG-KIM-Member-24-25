import 'package:flutter/material.dart';
import 'package:gdg_24_25_flutter_study/24_12_19/view/diary.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Diary(),
    );
  }
}
