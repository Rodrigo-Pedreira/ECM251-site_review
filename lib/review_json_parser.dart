class ReviewJSONParser {
  int? id;
  int? idUser;
  int? idFilm;
  String? review;
  int? likes;
  int? score;
  String? date;

  ReviewJSONParser(
      {this.id,
       this.idUser,
       this.idFilm,
       this.review,
       this.likes,
       this.score,
       this.date});

  ReviewJSONParser.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    idUser = json['idUser'];
    idFilm = json['idFilm'];
    review = json['review'];
    likes = json['likes'];
    score = json['score'];
    date = json['date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['idUser'] = idUser;
    data['idFilm'] = idFilm;
    data['review'] = review;
    data['likes'] = likes;
    data['score'] = score;
    data['date'] = date;
    return data;
  }
}
