import 'package:flutter/material.dart';
import '../config/app_textstyle.dart';
import '../controllers/home_controller.dart';

class HomeView extends StatefulWidget {
  final HomeController homeController;
  HomeView({Key key, this.homeController}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with AppTextStyle {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
              icon: widget.homeController.isDarkTheme
                  ? Icon(Icons.light_mode, color: Colors.white)
                  : Icon(Icons.brightness_2, color: Colors.black),
              onPressed: () {
                if (widget.homeController.isDarkTheme == true)
                  widget.homeController.changeToDarkTheme(false);
                else if (widget.homeController.isDarkTheme == false)
                  widget.homeController.changeToLightTheme(true);
              }),
        ],
        title: Text('InstaReels', style: darkThemeHomeAppBarTextStyle),
        centerTitle: true,
      ),
    );
  }
}
