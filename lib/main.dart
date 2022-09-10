import 'package:flutter/material.dart';
import 'package:flutter_dm_di/app/presentation/views/sign_in/sign_in_view.dart';
import 'package:flutter_dm_di/utils/di/di_locator.dart';

void main() {
  initDI();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SignInView(),
    );
  }
}
