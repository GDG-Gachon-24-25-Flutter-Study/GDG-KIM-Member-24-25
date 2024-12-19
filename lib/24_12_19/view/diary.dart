import 'package:flutter/material.dart';
import 'package:gdg_24_25_flutter_study/24_12_19/component/custom_text_button.dart';

class Diary extends StatelessWidget {
  final List<String> weeks = [
    'SUN',
    'MON',
    'TUE',
    'WED',
    'THU',
    'FRI',
    'SAT',
    'SUN'
  ];

  Diary({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: MediaQuery.sizeOf(context).width,
          height: MediaQuery.sizeOf(context).height,
          // 일기장 페이지 스타일링
          decoration: BoxDecoration(
            border: Border.all(
              color: const Color.fromARGB(255, 209, 211, 213),
              width: 10,
              style: BorderStyle.solid,
            ),
          ),
          // 페이지의 내용
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // 날짜 정보
              Text(
                'FRIDAY / MAY 15 / 2015',
                style: TextStyle(
                  fontSize: 24.0,
                  color: Colors.black,
                ),
              ),
              // 경계선
              Divider(
                // 높이
                height: 24,
                // 선 두께
                thickness: 5,
                // 색상
                color: const Color.fromARGB(255, 209, 211, 213),
                // 시작 선 패딩
                indent: 16,
                // 끝 선 패딩
                endIndent: 16,
              ),
              // Flexible을 이용한 동적관리
              // 일기장 본문
              Flexible(
                flex: 6,
                child: Container(
                  padding: EdgeInsets.all(12.0),
                  margin: EdgeInsets.all(12.0),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border.all(
                      color: const Color.fromARGB(255, 209, 211, 213),
                    ),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Text(
                    '오늘은 아침부터 맑은 햇살이 창문을 두드리며 하루를 시작했다. 따뜻한 커피 한 잔과 함께 잠깐의 여유를 만끽하며 계획을 세웠다.\n\n일의 시작은 다소 바빴지만, 점심시간이 되어 좋은 사람들과 맛있는 음식을 함께하며 기분 좋은 휴식을 가질 수 있었다. 오후에는 몇 가지 어려운 과제를 마주했지만, 집중력을 발휘해 하나씩 해결해나가는 성취감을 느낄 수 있었다.\n\n저녁에는 스스로에게 보상을 주기로 하고, 좋아하는 음식을 요리하며 하루를 마무리했다. 오늘의 하이라이트는 스스로와의 작은 약속을 지키며 한 발짝 더 나아갔다는 점. 고단하지만 의미 있는 하루였다.\n\n내일은 오늘보다 조금 더 나아지길 바라며, 오늘을 고이 접어 내 마음속에 간직한다.',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ),
              // 여백 공간 띄우기
              Spacer(
                flex: 3,
              ),
              // 요일 
              Flexible(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(
                    7,
                    (index) {
                      // 일요일: 텍스트 버튼
                      if (weeks[index] == 'SUN') {
                        return CustomTextButton(
                          onPressed: () {},
                          data: weeks[index],
                          foregroundColor: Colors.pink,
                          backgroundColor: Colors.transparent,
                        );
                      }
                      // 나머지 요일: 텍스트 버튼
                      return CustomTextButton(
                        onPressed: () {},
                        data: weeks[index],
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
