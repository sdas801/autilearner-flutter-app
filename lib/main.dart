import 'package:autilearner_flutter_app/src/page/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(const MainApp());
  debugPaintSizeEnabled = false;

}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xffeaf3fb),
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xffeaf3fb),
          centerTitle: true,
          titleTextStyle: TextStyle(fontSize: 30,fontWeight: FontWeight.bold, color: Color(0xff1f3a8a))
        ),
        fontFamily: 'Roboto',
        textTheme: TextTheme(
          
          bodyMedium: TextStyle(color: Color(0xff1f3a8a),fontWeight: FontWeight.bold, fontSize: 20.0, ),
        )
        ),
      home: LoginPage(),
    );
  }
}
