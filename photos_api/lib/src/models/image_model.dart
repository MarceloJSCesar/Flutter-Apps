class ImageModel {
  late int id;
  late String name;
  late String description;

  ImageModel(this.id, this.name, this.description);

  ImageModel.fromJson(Map<String, dynamic> jsonParsed) {
    id = jsonParsed['id'];
    name = jsonParsed['name'];
    description = jsonParsed['description'];
  }

  @override
  String toString() =>
      'Photo Data: id: $id, name: $name, description: $description';
}
