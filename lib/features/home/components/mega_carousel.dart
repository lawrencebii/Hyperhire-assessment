import 'package:flutter/cupertino.dart';
import 'package:prime_template/features/home/home_provider.dart';
import 'package:provider/provider.dart';

class MegaCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return PageView.builder(
      itemCount: 4, // Number of items in the list
      itemBuilder: (context, index) {
        WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
          Provider.of<HomeProvider>(context, listen: false).setIndex(index);
        });
        return Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/c${index + 1}.png"),
              fit: BoxFit.fill,
            ),
          ),
          height: 250,
          width: size.width,
        );
      },
    );
  }
}
