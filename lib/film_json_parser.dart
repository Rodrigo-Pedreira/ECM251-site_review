class FilmJSONParser {
  int? id;
  String? name;
  String? genre;
  String? director;
  String? date;

  FilmJSONParser({this.id, this.name, this.genre, this.director, this.date});

  FilmJSONParser.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    genre = json['genre'];
    director = json['director'];
    date = json['date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['genre'] = genre;
    data['director'] = director;
    data['date'] = date;
    return data;
  }
}
