import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:prime_template/features/profile/components/profile_product.dart';
import 'package:prime_template/features/home/home_provider.dart';
import 'package:prime_template/features/navigation/components/footer_section.dart';
import 'package:prime_template/features/profile/components/profile_text.dart';
import 'package:prime_template/utils/colors.dart';
import 'package:provider/provider.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  void dispose() {
    // TODO: implement dispose
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.light,
    ));
    super.dispose();
  }

  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      // backgroundColor: Color(0xff#EEEEEE),
      appBar: AppBar(
        automaticallyImplyLeading: true,
        centerTitle: true,
        title: Column(
          children: [
            Text(
              "랭킹 1위",
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w400,
                color: ColorsConstants.hintColor,
              ),
            ),
            Text(
              "베스트 리뷰어",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
      // backgroundColor: ColorsConstants.bgColor,
      body: Consumer<HomeProvider>(
        builder: (context, provider, child) {
          return SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Divider(),
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage(
                            "assets/images/n${provider.selectedImage}.png")),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: Column(
                    children: [
                      Text(
                        "Name0${provider.selectedProfile}",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      if (provider.selectedProfile == "1")
                        IntrinsicWidth(
                          child: Row(
                            children: [
                              SvgPicture.asset("assets/icons/crown.svg"),
                              Text(
                                "골드",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xffFFD233),
                                ),
                              ),
                            ],
                          ),
                        ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                    decoration: BoxDecoration(
                      color: Color(0xffF0F0F0),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Text(
                      "조립컴 업체를 운영하며 리뷰를 작성합니다.",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff868686),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  color: ColorsConstants.bgColor,
                  height: 20,
                ),
                // SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            "작성한 리뷰",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Text(
                            "총 35개",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff616161),
                            ),
                          ),
                        ],
                      ),
                      SvgPicture.asset("assets/icons/dd.svg"),
                    ],
                  ),
                ),
                Divider(
                  color: ColorsConstants.bgColor,
                ),
                SizedBox(
                  height: 10,
                ),
                ProfileProduct(),
                Divider(
                  color: ColorsConstants.bgColor,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 34,
                        width: 34,
                        margin: EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage(
                                  "assets/images/n${provider.selectedImage}.png")),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Name0${provider.selectedProfile}",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Row(
                            children: [
                              ...List.generate(
                                4,
                                (index) => Icon(
                                  Icons.star,
                                  size: 11,
                                  color: Color(0xffFFD233),
                                ),
                              ),
                              Icon(
                                Icons.star,
                                size: 11,
                                color: Color(0xffF0F0F0),
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text(
                                '2022.12.09',
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 10,
                                  color: ColorsConstants.hintColor,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Expanded(
                          child: SizedBox(
                        width: 10,
                      )),
                      SvgPicture.asset("assets/icons/bookmark.svg"),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ProfileText(),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Icon(
                        Icons.bolt,
                        color: ColorsConstants.blue,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        width: size.width * 0.8,
                        child: Text(
                          '멀티 작업도 잘 되고 꽤 괜찮습니다. 저희 회사 고객님들에게도 추천 가능한 제품인 듯 합니다.',
                          maxLines: 2,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Color(0xff616161),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Row(
                    children: [
                      Icon(
                        Icons.bolt,
                        color: Color(0xffD7D7D7),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        width: size.width * 0.8,
                        child: Text(
                          '3600에서 바꾸니 체감이 살짝 되네요. 버라이어티한 느낌 까지는 아닙니다.',
                          maxLines: 2,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Color(0xff616161),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Center(
                  child: SizedBox(
                      width: 239,
                      height: 70,
                      child: Image.asset("assets/images/3ims.png")),
                ),
                SizedBox(
                  height: 20,
                ),
                Divider(
                  color: ColorsConstants.bgColor,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: TextFormField(
                        controller: TextEditingController(),
                        // cursorHeight: 4,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "댓글 달기..",
                            hintStyle: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.w400),
                            focusedBorder: InputBorder.none,
                            prefixIcon: Padding(
                              padding: EdgeInsetsDirectional.all(15),
                              child: SvgPicture.asset("assets/icons/chat.svg"),
                            )),
                      ),
                    ),
                  ),
                ),
                Container(
                  color: ColorsConstants.bgColor,
                  height: 20,
                ),
                FooterSection(),
                Container(
                  color: ColorsConstants.bgColor,
                  height: 50,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
