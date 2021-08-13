import 'dart:convert';
import 'package:http/http.dart' show get;
import '/src/models/photo_model.dart';

class HomeService {
  fetchImage(int counter) async {
    counter++;
    final url = Uri.parse('https://jsonplaceholder.typicode.com/photos');
    final response = await get(url);
    final photo_model = Photo.fromJson(json.decode(response.body));
  }
}
