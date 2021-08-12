class Photo {
  late int id;
  late String name;
  late String description;

  Photo(this.id, this.name, this.description);

  Photo.fromJson(Map<String, dynamic> jsonParsed) {
    id = jsonParsed['id'];
    name = jsonParsed['name'];
    description = jsonParsed['description'];
  }

  void get newMethod => Photo;

  @override
  String toString() =>
      'Photo Data: id: $id, name: $name, description: $description';
}
