import 'package:flutter/material.dart';

import 'app_routes.dart';

void main() {
  runApp(MyApp(
    appRouts: AppRouts(),
  ));
}

class MyApp extends StatelessWidget {
  MyApp({Key? key, required this.appRouts}) : super(key: key);
  final AppRouts appRouts;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: appRouts.generateRouts,
    );
  }
}
