import 'dart:convert';
import 'package:http/http.dart' show get;
import '../models/image_model.dart';

class HomeService {
  fetchImage(int counter, List<ImageModel> imageModel) async {
    counter++;
    final url = Uri.parse('https://jsonplaceholder.typicode.com/photos');
    final response = await get(url);
    final image = ImageModel.fromJson(json.decode(response.body));
    imageModel.add(image);
  }
}
