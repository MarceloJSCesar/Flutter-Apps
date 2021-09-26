import 'package:flutter/material.dart';
import '../config/app_textstyle.dart';
import '../controllers/home_controller.dart';

class HomeView extends StatefulWidget with AppTextStyle {
  final HomeController homeController;
  HomeView({Key key, this.homeController}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        actions: [
          IconButton(
              icon: Icon(
                widget.homeController.isDarkTheme
                    ? Icons.light_mode
                    : Icons.brightness_2,
              ),
              onPressed: () {
                print('before ' + widget.homeController.isDarkTheme.toString());
                if (widget.homeController.isDarkTheme == true)
                  widget.homeController.changeToDarkTheme(false);
                else if (widget.homeController.isDarkTheme == false)
                  widget.homeController.changeToLightTheme(true);
                print('other ' + widget.homeController.isDarkTheme.toString());
                print('after ' + widget.homeController.isDarkTheme.toString());
              }),
        ],
      ),
    );
  }
}
