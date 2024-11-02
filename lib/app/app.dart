import 'package:flutter/material.dart';

import '../presentation/common_scaffold.dart';
import '../utils/color_schemes.g.dart';

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Adventure Quest',
      theme: ThemeData(
        useMaterial3: true,
         colorScheme: lightColorScheme),
      darkTheme: ThemeData(
        useMaterial3: true,
       colorScheme: darkColorScheme),
      home: const CommonScaffold(),
    );
  }
}
