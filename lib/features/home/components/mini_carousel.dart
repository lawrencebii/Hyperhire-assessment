import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prime_template/features/home/home_provider.dart';
import 'package:provider/provider.dart';

class MiniCarousel extends StatelessWidget {
  const MiniCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(
      builder: (context, provider, child) {
        return Container(
          width: 70,
          child: Row(
            children: [
              Container(
                width: provider.currentIndex == 0 ? 10 : 4,
                margin: EdgeInsets.all(2),
                height: 4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
              ),
              Container(
                width: provider.currentIndex == 1 ? 10 : 4,
                height: 4,
                margin: EdgeInsets.all(2),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
              ),
              Container(
                width: provider.currentIndex == 2 ? 10 : 4,
                height: 4,
                margin: EdgeInsets.all(2),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
              ),
              Container(
                width: provider.currentIndex == 3 ? 10 : 4,
                margin: EdgeInsets.all(2),
                height: 4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
