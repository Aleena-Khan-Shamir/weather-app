import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:weather_app/config/theme/theme.dart';
import 'package:weather_app/pages/home/page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather App',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.themeData(context),
      home: const AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.light, child: HomePage()),
    );
  }
}
