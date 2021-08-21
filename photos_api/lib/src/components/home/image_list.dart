import 'package:flutter/material.dart';
import '../../models/image_model.dart';

class ImageList extends StatelessWidget {
  final List<ImageModel> images;
  ImageList({
    @required this.images,
  });
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: images.length,
      itemBuilder: (context, int index) {
        return Container(
          padding: const EdgeInsets.all(20.0),
          margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
          ),
          child: Column(
            children: <Widget>[
              SizedBox(height: 30),
              Transform.rotate(
                angle: 180 / 5.6,
                child: Image(
                  height: 80,
                  width: 80,
                  image: NetworkImage(images[index].url),
                ),
              ),
              SizedBox(height: 30),
              Text(images[index].title),
              SizedBox(height: 8),
            ],
          ),
        );
      },
    );
  }
}
