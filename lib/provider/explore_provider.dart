import 'package:clone_ebook/models/book_modal.dart';
import 'package:clone_ebook/services/api_service.dart';
import 'package:flutter/material.dart';

class ExploreProvider with ChangeNotifier {
  ExploreProvider() {
    initBook();
  }

  bool isLoading = false;
  late BookModal top;
  late List<String> titles = [];
  late List<String> hrefs = [];

  void setExplores() async {
    isLoading = true;
    try {
      top = await ApiService.getQuery(ApiService.popular);

      for (var i = 10; i < top.feed!.link!.length; i++) {
        String title = top.feed!.link![i].title as String;
        String href = top.feed!.link![i].href as String;
        titles.add(title);
        hrefs.add(href);
        // Link link = top.feed!.link![i];
        // print(link.href);
        // BookModal explore = await ApiService.getQuery(link.href as String);
        // explores.add(explore);
      }

      isLoading = false;
      notifyListeners();
    } catch (e) {
      isLoading = false;
      notifyListeners();
      rethrow;
    }
  }

  // List<BookModal> getExplores() {
  //   return explores;
  // }

  List<String> getTitles() {
    return titles;
  }

  List<String> getHrefs() {
    return hrefs;
  }

  void initBook() {
    setExplores();
  }
}
