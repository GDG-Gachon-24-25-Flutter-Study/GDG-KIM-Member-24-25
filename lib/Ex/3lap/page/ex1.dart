import 'package:flutter/material.dart';

import '../component/rainbow_model_box.dart';
import '../const/colors.dart';
import 'ex2.dart';

final axisAlignments = [
  MainAxisAlignment.spaceEvenly,
  MainAxisAlignment.spaceBetween,
  MainAxisAlignment.spaceEvenly,
];

class Ex1 extends StatelessWidget {
  const Ex1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Gachon GDG 24-25 Flutter Study',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Ex2(),
                  ),
                );
              },
              icon: Icon(
                Icons.directions_sharp,
              ),
              color: Colors.white,
              iconSize: 28.0,
            ),
          ),
        ],
        backgroundColor: Colors.blueGrey,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // 1열
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              colors.length,
              (index) {
                if (index < 3) {
                  return RainbowModelBox(
                    index: index,
                  );
                }

                return null;
              },
            ).whereType<Widget>().toList(),
          ),

          // 2열
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(
              2,
              (index) => RainbowModelBox(index: index + 3),
            ),
          ),

          // 3열
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(
              2,
              (index) {
                return RainbowModelBox(index: index + 3 + 2);
              },
            ),
          ),
        ],
      ),
    );
  }
}
