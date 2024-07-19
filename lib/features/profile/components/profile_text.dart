import 'package:flutter/cupertino.dart';

class ProfileText extends StatelessWidget {
  ProfileText({super.key});
  List<String> profileTexts = [
    '“가격 저렴해요”',
    '“CPU온도 고온”',
    '“서멀작업 가능해요”',
    '“게임 잘 돌아가요”',
    '“발열이 적어요”'
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ...List.generate(
              profileTexts.length,
              (index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  '“가격 저렴해요”',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 10,
                    color: Color(0xffA0A0A0),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
