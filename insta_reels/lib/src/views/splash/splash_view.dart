import 'package:flutter/material.dart';
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
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Form(
          key: _formkey,
          autovalidateMode: AutovalidateMode.always,
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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: 12),
                    Text(
                      'InstaReels',
                      style: darkThemeHomeAppBarTextStyle,
                    ),
                    SizedBox(height: 12),
                    Container(
                      width: width - 16 - 22,
                      margin: const EdgeInsets.symmetric(horizontal: 22),
                      child: TextFormField(
                        controller: _userNameController,
                        validator: (text) {
                          if (text.isEmpty ||
                              _userNameController.text.isEmpty ||
                              _userNameController.text.length <= 3 ||
                              text.length <= 3) {
                            return 'invalid username';
                          }
                          return null;
                        },
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          labelText: 'Username',
                          labelStyle: darkLabelFieldTextStyle,
                          hintText: 'd__jordan_',
                        ),
                      ),
                    ),
                    SizedBox(height: 36),
                    ElevatedButton(
                      onPressed: validateUsername ? () {} : null,
                      child: Text('Get Profile'),
                    ),
                    SizedBox(height: 16),
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
      ),
    );
  }
}
