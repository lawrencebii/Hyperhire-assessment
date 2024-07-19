import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:prime_template/utils/colors.dart';

class ProfileProduct extends StatelessWidget {
  const ProfileProduct({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          Container(
            height: 104,
            width: 104,
            padding: EdgeInsets.all(7),
            margin: EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
              border: Border.all(
                color: Color(0xffCECECE),
              ),
            ),
            child: Column(
              children: [
                Center(
                  child: Container(
                    height: 81,
                    width: 94,
                    child: Image.asset(
                      "assets/images/pp.png",
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: size.width * 0.6,
            height: 104,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "AMD 라이젠 5 5600X 버미어 정품 멀티팩",
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                  ),
                ),
                Text(
                  "정품 멀티팩",
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    ...List.generate(
                      4,
                      (index) => Icon(
                        Icons.star,
                        size: 20,
                        color: Color(0xffFFD233),
                      ),
                    ),
                    Icon(
                      Icons.star,
                      size: 20,
                      color: Color(0xffF0F0F0),
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      '4.07',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
