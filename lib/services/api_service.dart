import 'dart:convert';

import 'package:clone_ebook/models/book_modal.dart';
import 'package:http/http.dart' as http;
import 'package:xml2json/xml2json.dart';

class ApiService {
  static const String corsUrl = 'https://cors-anywhere.herokuapp.com/';
  static String baseURL = 'https://catalog.feedbooks.com';
  static String publicDomainURL = '$baseURL/publicdomain/browse';
  static String popular = '$publicDomainURL/top.atom';
  static String recent = '$publicDomainURL/recent.atom';
  static String awards = '$publicDomainURL/awards.atom';
  static String noteworthy = '$publicDomainURL/homepage_selection.atom';
  static String shortStory = '$publicDomainURL/top.atom?cat=FBFIC029000';
  static String sciFi = '$publicDomainURL/top.atom?cat=FBFIC028000';
  static String actionAdventure = '$publicDomainURL/top.atom?cat=FBFIC002000';
  static String mystery = '$publicDomainURL/top.atom?cat=FBFIC022000';
  static String romance = '$publicDomainURL/top.atom?cat=FBFIC027000';
  static String horror = '$publicDomainURL/top.atom?cat=FBFIC015000';

  static Future<BookModal> getQuery(String url) async {
    final uri = Uri.parse(url);
    var res = await http.get(uri).catchError((e) => throw (e));
    BookModal bookModal;
    if (res.statusCode == 200) {
      var xml2Json = Xml2Json();
      xml2Json.parse(res.body);
      var json = jsonDecode(xml2Json.toGData());
      bookModal = BookModal.fromJson(json);
    } else {
      throw ('Error ${res.statusCode}');
    }
    return bookModal;
  }
}
