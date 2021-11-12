import 'package:http/http.dart' as http;

class Networkhelper {
  static const webSiteURL = "http://localhost:8080";
  static const filmRepositoryURL   = "$webSiteURL/film/selectAll";
  static const userRepositoryURL   = "$webSiteURL/user/selectAll";
  static const reviewRepositoryURL = "$webSiteURL/review/selectAll";

  static Future getData(url) async {
    http.Response response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      // print(response.statusCode);
      return response.body;
    } else {
      throw Exception(
          'Http Get ERROR:${response.statusCode}: ${response.reasonPhrase}');
    }
  }
}
