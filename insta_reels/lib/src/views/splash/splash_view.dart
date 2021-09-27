import 'package:flutter/material.dart';
import 'package:insta_reels/src/components/widgets/splash/splash_body.dart';
import 'package:insta_reels/src/config/app_textstyle.dart';

class SplashView extends StatefulWidget {
  SplashView({Key key}) : super(key: key);

  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> with AppTextStyle {
  final _formkey = GlobalKey<FormState>();
  final _userNameController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _userNameController.addListener(() => setState(() {}));
  }

  bool get validateUsername {
    if (_userNameController.text.isEmpty ||
        _userNameController.text.length <= 3) {
      return false;
    } else {
      return true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Form(
          key: _formkey,
          autovalidateMode: AutovalidateMode.always,
          child: SplashBody(
            validateUsername: validateUsername,
            userNameController: _userNameController,
          ),
        ),
      ),
    );
  }
}
