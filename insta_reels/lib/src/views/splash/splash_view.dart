import 'package:flutter/material.dart';
import 'package:insta_reels/src/config/app_textstyle.dart';

class SplashView extends StatelessWidget with AppTextStyle {
  SplashView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(child: Container()),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18),
              ),
              margin: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(height: 500),
                ],
              ),
            ),
            Expanded(child: Container()),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Text(
                'Marcelo Cesar',
                style: darkMyNameTextStyle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
