import 'package:flutter/material.dart';
import 'package:prime_template/features/home/views/Homepage.dart';
import 'package:prime_template/main.dart';
import 'package:prime_template/utils/colors.dart';
import 'package:provider/provider.dart';

import '../components/bottomNar.dart';
import '../navigation_provider.dart';

class Navigation extends StatefulWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  @override
  void initState() {
    // TODO: implement initState
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        return Future(() => false);
      },
      child: Stack(
        children: [
          SafeArea(
            child: Scaffold(
              body: Consumer<NavigationProvider>(
                builder: (context, provider, child) {
                  return IndexedStack(
                    index: provider.selectedIndex,
                    children: [
                      HomePage(),
                      Container(
                        height: MediaQuery.sizeOf(context).height,
                        color: ColorsConstants.bgColor,
                        child: Center(
                          child: Text(
                            '카테고리',
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.w800),
                          ),
                        ),
                      ),
                      Container(
                        height: MediaQuery.sizeOf(context).height,
                        color: ColorsConstants.bgColor,
                        child: Center(
                          child: Text(
                            '커뮤니티',
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.w800),
                          ),
                        ),
                      ),
                      Container(
                        height: MediaQuery.sizeOf(context).height,
                        color: ColorsConstants.bgColor,
                        child: Center(
                          child: Text(
                            '마이페이지',
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.w800),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
              bottomNavigationBar: const BottomNavBar(),
            ),
          ),
          // const AppProgressIndicator(),
        ],
      ),
    );
  }
}
