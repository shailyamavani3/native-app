import 'package:flutter/material.dart';
import 'package:native_app/screens/content_screen.dart';

void main() {
  runApp(const NativeApp());
}

class NativeApp extends StatelessWidget {
  const NativeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Native App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: const ContentScreen(),
    );
  }
}
