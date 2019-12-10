import 'package:flutter/material.dart';
import 'package:flutter_learn/router/route.dart';
import 'package:flutter_learn/splash.dart';
import 'package:flutter_learn/utils/shared_preferences.dart';

void main() => {
  runApp(MyApp()),
  init()
};

//程序初始化操作
void init() {
  SPUtils.getInstance().init();
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Learn',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashPage(),
      routes: RouteMap.routes,
    );
  }
}