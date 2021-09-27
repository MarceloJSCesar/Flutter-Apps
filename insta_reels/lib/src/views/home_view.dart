import 'package:flutter/material.dart';
import 'package:insta_reels/src/components/classes/home_tabs.dart';
import 'package:insta_reels/src/components/widgets/custom_alert_dialog.dart';
import '../config/app_textstyle.dart';
import '../controllers/home_controller.dart';

class HomeView extends StatefulWidget {
  final HomeController homeController;
  HomeView({Key key, this.homeController}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with TickerProviderStateMixin {
  HomeTabs _homeTabs = HomeTabs();
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text('InstaReels',
            style: AppTextStyle.darkThemeHomeAppBarTextStyle),
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
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: DefaultTabController(
            length: 2,
            child: TabBar(
              labelStyle: AppTextStyle.darkThemeTabBarTextStyle,
              controller: _tabController,
              tabs: _homeTabs.homeTabs,
            ),
          ),
        ),
      ),
    );
  }
}
