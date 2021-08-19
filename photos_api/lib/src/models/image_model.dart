class ImageModel {
  int id;
  String name;
  String description;

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
