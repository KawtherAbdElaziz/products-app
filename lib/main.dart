import 'package:route_task/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApplication());

  
}

class MyApplication extends StatelessWidget {
  const MyApplication({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: "My apllication ",debugShowCheckedModeBanner: false, home: HomePage());
  }
}
