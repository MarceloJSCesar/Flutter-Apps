import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import './views/home_view.dart';
import './controllers/home_controller.dart';

class InstaReels extends StatelessWidget {
  InstaReels({Key key}) : super(key: key);

  final _homeController = HomeController();

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness:
              _homeController.isDarkTheme ? Brightness.dark : Brightness.light,
        ),
        home: HomeView(homeController: _homeController),
      );
    });
  }
}
