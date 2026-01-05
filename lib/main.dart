import 'package:flutter/material.dart';
import 'package:ultra_cart/utils/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ultra Cart',
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      home: Scaffold(
        body: Center(
          child: Text("Hello bro "),
        ),
      ),
    );
  }
}
