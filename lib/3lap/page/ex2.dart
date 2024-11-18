import 'package:flutter/material.dart';

class Ex2 extends StatefulWidget {
  const Ex2({super.key});

  @override
  State<Ex2> createState() => _Ex2State();
}

class _Ex2State extends State<Ex2> {
  int count = 0;

  void plus() {
    setState(() {
      count++;
    });
  }

  void minus() {
    setState(() {
      count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          'Gachon GDG 24-25 Flutter Study',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey,
              width: 2.0,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                // 제목
                Text(
                  'Count Check!!!',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 36.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 36.0),

                // 카운터 숫자
                Text(
                  '${count}',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 36.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 36.0),

                // 아이콘 버튼
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // 테두리 윤곽 스타일 지정
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                          width: 2.0,
                        ),
                        shape: BoxShape.circle,
                      ),
                      // '-' 아이콘 버튼
                      child: IconButton(
                        onPressed: minus,
                        icon: Icon(Icons.exposure_minus_1),
                        color: Colors.white,
                        style: IconButton.styleFrom(
                          hoverColor: Colors.grey,
                          iconSize: 36.0,
                        ),
                      ),
                    ),

                    SizedBox(width: 36.0),

                    // 테두리 윤곽 스타일 지정
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                          width: 2.0,
                        ),
                        shape: BoxShape.circle,
                      ),
                      // '+' 아이콘 버튼
                      child: IconButton(
                        onPressed: plus,
                        icon: Icon(Icons.plus_one),
                        color: Colors.white,
                        style: IconButton.styleFrom(
                          hoverColor: Colors.grey,
                          iconSize: 36.0,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
