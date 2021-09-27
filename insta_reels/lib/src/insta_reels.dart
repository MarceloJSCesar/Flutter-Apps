import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:insta_reels/src/config/app_routes_name.dart';
import 'package:insta_reels/src/views/splash/splash_view.dart';
import 'views/home/home_view.dart';
import './controllers/home_controller.dart';

class InstaReels extends StatelessWidget with AppRoutesName {
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
        initialRoute: splashView,
        routes: {
          splashView: (_) => SplashView(),
          homeView: (_) => HomeView(homeController: _homeController),
        },
      );
    });
  }
}
