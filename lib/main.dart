import 'package:flutter/material.dart';
import 'package:neobis_flutter_hello_flutter/features/presentation/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(primaryColor: Colors.deepPurpleAccent),
      home: const HomePage(),
    );
  }
}
