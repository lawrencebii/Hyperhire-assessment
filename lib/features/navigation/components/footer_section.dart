import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:prime_template/utils/colors.dart';

class FooterSection extends StatefulWidget {
  const FooterSection({super.key});

  @override
  State<FooterSection> createState() => _FooterSectionState();
}

class _FooterSectionState extends State<FooterSection> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: ColorsConstants.bgColor,
      width: size.width,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "LOGO Inc.",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14,
              color: ColorsConstants.hintColor,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "회사 소개 ",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 13,
                  color: ColorsConstants.hintColor,
                ),
              ),
              Container(
                width: 1,
                height: 10,
                color: Color(0xffC8C8C8),
              ),
              Text(
                "인재 채용",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 13,
                  color: ColorsConstants.hintColor,
                ),
              ),
              Container(
                width: 1,
                height: 10,
                color: Color(0xffC8C8C8),
              ),
              Text(
                "기술 블로그",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 13,
                  color: ColorsConstants.hintColor,
                ),
              ),
              Container(
                width: 1,
                height: 10,
                color: Color(0xffC8C8C8),
              ),
              Text(
                "리뷰 저작권",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 13,
                  color: ColorsConstants.hintColor,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SvgPicture.asset("assets/icons/rl.svg"),
                  Text(
                    "review@logo.com",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                      color: ColorsConstants.hintColor,
                    ),
                  ),
                ],
              ),
              SvgPicture.asset("assets/icons/ddf.svg")
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Divider(),
          SizedBox(
            height: 15,
          ),
          Text(
            "@2022-2022 LOGO Lab, Inc. (주)아무개  서울시 강남구",
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 10,
              color: ColorsConstants.hintColor,
            ),
          ),
        ],
      ),
    );
  }
}
