import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String data;
  final Color? foregroundColor;
  final Color? backgroundColor;

  const CustomTextButton({
    super.key,
    required this.onPressed,
    required this.data,
    this.foregroundColor = Colors.white,
    this.backgroundColor = Colors.brown,
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      // 텍스트 버튼 크기로 인해 화면 밖으로 나가지며 오버플로우가 발생.
      // 이를 방지하기 위해 위젯의 크기를 제한
      constraints: BoxConstraints(
        minWidth: 40.0,
        minHeight: 40.0,
        maxWidth: 45.0,
        maxHeight: 45.0,
      ),
      // 텍스트 버튼
      child: TextButton(
        // 버튼 스타일링
        style: TextButton.styleFrom(
          shape: CircleBorder(
            side: BorderSide(
              color: Colors.grey,
            ),
          ),
          // 버튼 주 색상 (글씨, 눌렸을 때 hover 색상 등)
          foregroundColor: foregroundColor,
          // 버튼 배경 색상
          backgroundColor: backgroundColor,
        ),
        // 눌렸을 때 실행될 함수
        onPressed: onPressed,
        // 버튼 문구
        // FittedBox를 이용해 버튼 크기에 맞게 Text 크기를 자동 조정
        child: FittedBox(
          child: Text(
            data,
          ),
        ),
      ),
    );
  }
}
