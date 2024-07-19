import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:prime_template/utils/colors.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Container(
      width: size.width,
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      padding: EdgeInsets.all(1.5),
      height: 40,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                ColorsConstants.grad1,
                ColorsConstants.grad2,
              ])),
      child: Container(
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Center(
          child: TextFormField(
            controller: TextEditingController(),
            // cursorHeight: 4,
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "검색어를 입력하세요",
                hintStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 10, vertical: 12),
                focusedBorder: InputBorder.none,
                suffixIcon: Padding(
                  padding: EdgeInsetsDirectional.all(3),
                  child: SvgPicture.asset("assets/icons/searchi.svg"),
                )),
          ),
        ),
      ),
    );
  }
}
