import 'package:flutter/material.dart';

import '../const/colors.dart';

class RainbowModelBox extends StatefulWidget {
  const RainbowModelBox({
    super.key,
    required this.index,
  });

  final int index;

  @override
  State<RainbowModelBox> createState() => _RainbowModelBoxState();
}

class _RainbowModelBoxState extends State<RainbowModelBox> {
  late int colorsIndex;

  @override
  void initState() {
    super.initState();
    colorsIndex = widget.index;
  }

  void changeColorsIndex() {
    print('안녕');

    setState(() {
      colorsIndex += 1;

      if (colorsIndex >= colors.length) {
        colorsIndex = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: changeColorsIndex,
      child: Container(
        width: 50.0,
        height: 50.0,
        padding: EdgeInsets.all(8.0),
        color: colors[colorsIndex],
        child: Align(
          alignment: Alignment.center,
          child: Text(
            '${colorsIndex + 1}',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

// Material -> Scaffold 약속이다.
// Scaffold -> A4 도화지
// 제목 그리는게 -> appBar
// 내용물을 그리는게 -> body

// Row(), Column()
// 주축, 보조축
// main, cross

// child과 children 차이점
// child는 자식 위젯을 하나밖에 가진다.
// children은 자식 위젯을 여러 개 가질 수 있다.

// child, children이 같이 있는 위젯은 절대 x
// 둘 다 없는 경우는 존재한다.

// 필수적인 위젯
// Text()
// Container()
// SizedBox()
// 
// Center()
// Align()
// 
// GestureDetector()
//
// ElevatedButton
// TextButton
// IconButton

// 지피티 활용!!!