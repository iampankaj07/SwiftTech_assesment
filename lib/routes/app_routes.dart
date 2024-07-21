import 'package:flutter/material.dart';
import 'package:imepay_assesment/widgets/bottom_nav.dart';
import 'package:imepay_assesment/presentation/home_screen.dart';

class AppRoutes {
  static const String initialRoute = '/initialRoute';
  static const String homeScreen = '/homeScreen';

  static Map<String, WidgetBuilder> routes = {
    initialRoute: (context) => const BottomNav(),
    homeScreen: (context) => const HomeScreen()
  };
}
