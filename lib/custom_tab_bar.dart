import 'package:flutter/material.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({required this.controller, required this.tabs});

  final TabController controller;
  final List<Widget> tabs;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double tabBarScaling = screenWidth > 1400
        ? 0.21
        : screenWidth > 1100
            ? 0.3
            : 0.4;
    return Padding(
      padding: EdgeInsets.only(right: screenWidth * 0.05),
      child: Container(
        width: screenWidth * tabBarScaling,
        child: Theme(
          data: ThemeData(
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
            hoverColor: Colors.transparent,
          ),
          child: TabBar(
            controller: controller,
            tabs: tabs,
            indicatorColor: Colors.blue,
          ),
        ),
      ),
    );
  }
}
