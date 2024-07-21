import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:imepay_assesment/core/utils/size_utils.dart';
import 'package:imepay_assesment/widgets/coming_soon.dart';
import 'package:imepay_assesment/presentation/provider.dart';
import 'package:imepay_assesment/routes/app_routes.dart';
import 'package:imepay_assesment/theme/theme_helper.dart';
import 'package:provider/provider.dart';

void main() {
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  ThemeHelper().changeTheme('primary');
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => DataProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          theme: theme,
          title: 'Imepay_assesment',
          debugShowCheckedModeBanner: false,
          initialRoute: AppRoutes.initialRoute,
          routes: AppRoutes.routes,
          onUnknownRoute: (RouteSettings settings) {
            return MaterialPageRoute(
              builder: (BuildContext context) {
                return const ComingSoonPage(); // Your default route
              },
            );
          },
        );
      },
    );
  }
}
