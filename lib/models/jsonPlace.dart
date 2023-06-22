class JsonPlace {
  final int id;
  final String title;
  final String thumbnailUrl;

  JsonPlace(
      {required this.id, required this.thumbnailUrl, required this.title});

  factory JsonPlace.fromJson(Map<String, dynamic> json) {
    return JsonPlace(
        id: json['id'],
        thumbnailUrl: json['thumbnailUrl'],
        title: json['title']);
  }
}
