import 'package:flutter/material.dart';

import 'screens/main/main_screen.dart';
import 'theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Digikala',
      debugShowCheckedModeBanner: false,
      locale: const Locale("fa"),
      theme: AppTheme.light,
      home: const Directionality(
        textDirection: TextDirection.rtl,
        child: MainScreen(),
      ),
    );
  }
}
