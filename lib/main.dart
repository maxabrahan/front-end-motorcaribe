import 'package:ecomerce_frontend/controllers/mainscreen_provider.dart';
import 'package:ecomerce_frontend/views/ui/mainscreen.dart';
import 'package:flutter/material.dart';
import 'package:ecomerce_frontend/controllers/mainscreen_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => MainScreenNotifier())
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}
