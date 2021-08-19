import 'package:flutter/material.dart';
import '../models/image_model.dart';
import '../services/home_service.dart';
import '../components/home/image_list.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _homeServices = HomeService();
  final List<ImageModel> images = [];
  int counter = 0;
  @override
  Scaffold build(BuildContext context) {
    return Scaffold(
      body: ImageList(images: images),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: _homeServices.fetchImage(counter, images),
      ),
    );
  }
}
