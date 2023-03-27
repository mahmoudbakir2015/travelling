import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget? tablet, mobileLarge;
  final Widget desktop, mobile;

  Responsive({
    required this.desktop,
    required this.mobile,
    this.tablet,
    this.mobileLarge,
  });

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1024;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1024;

  static bool isMobileLarge(BuildContext context) =>
      MediaQuery.of(context).size.width <= 700;

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width <= 500;

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;

    if (_size.width >= 1024) {
      return desktop;
    } else if (_size.width >= 700 && tablet != null) {
      return tablet!;
    } else if (_size.width >= 450 && mobileLarge != null) {
      return mobileLarge!;
    } else {
      return mobile;
    }
  }
}
