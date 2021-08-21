class ImageModel {
  int id;
  String url;
  String title;

  ImageModel(this.id, this.url, this.title);

  ImageModel.fromJson(index, jsonParsed) {
    id = jsonParsed[index]['id'];
    url = jsonParsed[index]['url'];
    title = jsonParsed[index]['title'];
  }

  @override
  String toString() => 'Photo Data: id: $id, url: $url, title: $title,';
}
