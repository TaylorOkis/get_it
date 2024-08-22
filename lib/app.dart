import 'package:flutter/material.dart';

import 'utils/theme/theme.dart';

class GetItApp extends StatelessWidget {
  const GetItApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: GetItAppTheme.lightTheme,
      darkTheme: GetItAppTheme.darkTheme,
    );
  }
}
