import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoes_app/screens/splash_screen.dart';

import 'models/cart_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Cart(),
      builder: (context, child) {
        return MaterialApp(
          title: "Shoes App",
          theme: ThemeData.light(
            useMaterial3: true,
          ).copyWith(
            colorScheme: ThemeData.light().colorScheme.copyWith(
                  background: Colors.white,
                  primary: Colors.black,
                  onSecondary: Colors.grey.shade300,
                  secondary: Colors.white,
                ),
          ),
          darkTheme: ThemeData.dark(useMaterial3: true).copyWith(
            colorScheme: ThemeData.dark().colorScheme.copyWith(
                  background: Colors.black,
                  primary: Colors.white,
                  onSecondary: Colors.white10,
                  secondary: Colors.black,
                ),
          ),
          themeMode: ThemeMode.system,
          debugShowCheckedModeBanner: false,
          home: const SplashScreen(),
        );
      },
    );
  }
}
