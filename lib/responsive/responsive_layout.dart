import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileView;
  final Widget tabletView;
  final Widget desktopView;

  const ResponsiveLayout({
    super.key,
    required this.mobileView,
    required this.desktopView,
    required this.tabletView,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 480) {
          return mobileView;
        } else if (constraints.maxWidth < 980) {
          return tabletView;
        } else {
          return desktopView;
        }
      },
    );
  }
}
