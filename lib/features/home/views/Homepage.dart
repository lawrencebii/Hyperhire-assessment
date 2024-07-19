import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:prime_template/features/home/components/SearchInput.dart';
import 'package:prime_template/features/home/components/mega_carousel.dart';
import 'package:prime_template/features/home/components/mini_carousel.dart';
import 'package:prime_template/features/home/components/products_section.dart';
import 'package:prime_template/features/home/home_provider.dart';
import 'package:prime_template/features/navigation/components/footer_section.dart';
import 'package:prime_template/features/navigation/components/slide_right.dart';
import 'package:prime_template/features/profile/profile_page.dart';
import 'package:prime_template/utils/colors.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Logo",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w500,
            color: ColorsConstants.blue,
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SearchInput(),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 250,
              width: size.width,
              color: Colors.red,
              child: Stack(
                children: [
                  MegaCarousel(),
                  Positioned(
                      bottom: 10,
                      left: (size.width * 0.5) - 30,
                      child: MiniCarousel())
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text(
                        "제일 핫한 리뷰를 만나보세요",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        "리뷰️  랭킹⭐ top 3",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: ColorsConstants.bottomSelectText,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ProductsSection(),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 15,
              color: ColorsConstants.bgColor,
            ),
            Container(
              width: size.width,
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "골드 계급 사용자들이예요",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff616161),
                    ),
                  ),
                  Text(
                    "베스트 리뷰어 🏆 Top10",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            context.read<HomeProvider>().selectProfile("1");
                            context.read<HomeProvider>().selectImage("0");
                            Navigator.push(
                              context,
                              SlideRightRoute(widget: ProfilePage()),
                            );
                          },
                          child: Container(
                            width: 75,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SvgPicture.asset("assets/icons/crown.svg"),
                                Container(
                                  height: 75,
                                  width: 75,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                        image:
                                            AssetImage("assets/images/n0.png")),
                                    border: Border.all(
                                        color: Color(0xffFFD233), width: 4),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  width: 75,
                                  child: Center(
                                    child: Text(
                                      "Name01",
                                      style: TextStyle(
                                        color: Color(0xff616161),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        ...List.generate(
                          9,
                          (index) => GestureDetector(
                            onTap: () {
                              context
                                  .read<HomeProvider>()
                                  .selectProfile("${index + 2}");
                              context
                                  .read<HomeProvider>()
                                  .selectImage("${index + 1}");
                              Navigator.push(
                                context,
                                SlideRightRoute(widget: ProfilePage()),
                              );
                            },
                            child: Container(
                              width: 75,
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 12,
                                  ),
                                  Container(
                                    height: 75,
                                    width: 75,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assets/images/n${index + 1}.png")),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    width: 75,
                                    child: Center(
                                      child: Text(
                                        "Name0${index + 2}",
                                        style: TextStyle(
                                          color: Color(0xff616161),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            FooterSection(),
            Container(
              color: ColorsConstants.bgColor,
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
