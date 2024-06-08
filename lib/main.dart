import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wadiz_with_riverpod/theme.dart';

void main(){
  runApp(const ProviderScope(child: AppEntry()));
}



class AppEntry extends StatelessWidget {
  const AppEntry({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: wadizDefaulteTheme,
      home: const Scaffold(
        body: Center(
          child: Text('Hello, World!'),
        ),
      ),
    );
  }
}