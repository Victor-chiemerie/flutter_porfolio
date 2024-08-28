import 'package:flutter/material.dart';
import 'package:flutter_porfolio/responsive/tablet_view.dart';

import 'responsive/desktop_view.dart';
import 'responsive/mobile_view.dart';
import 'responsive/responsive_layout.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: ResponsiveLayout(
        mobileView: MobileView(
          screenSize: screenWidth,
        ),
        tabletView: TabletView(screenSize: screenWidth,),
        desktopView: DesktopView(
          screenSize: screenWidth,
        ),
      ),
    );
  }
}