import 'package:clone_ebook/models/book_modal.dart';
import 'package:clone_ebook/services/api_service.dart';
import 'package:flutter/material.dart';

class HomeProvider with ChangeNotifier {
  HomeProvider() {
    initBook();
  }

  bool isLoading = false;
  late BookModal top;
  late BookModal recent;

  void setTopAndRecent() async {
    isLoading = true;
    top = await ApiService.getQuery(ApiService.popular);
    recent = await ApiService.getQuery(ApiService.recent);

    notifyListeners();
    isLoading = false;
  }

  BookModal getTop() {
    return top;
  }

  BookModal getRecent() {
    return recent;
  }

  void initBook() {
    setTopAndRecent();
  }
}
