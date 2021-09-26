import 'package:flutter/material.dart';
import 'package:insta_reels/src/controllers/home_controller.dart';

class InstaReels extends StatelessWidget {
  InstaReels({Key? key}) : super(key: key);

  bool get isDarkTheme => HomeController().isDarkTheme;

  @override
  MaterialApp build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: isDarkTheme ? Brightness.dark : Brightness.light,
      ),
      home: Container(),
    );
  }
}
