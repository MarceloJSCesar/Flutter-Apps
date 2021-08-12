import 'package:flutter/material.dart';
import './pages/home_page.dart';

class App extends StatelessWidget {
  @override
  MaterialApp build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
