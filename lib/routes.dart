import 'package:clone_ebook/screens/book_screen.dart';
import 'package:clone_ebook/screens/explore_screen.dart';
import 'package:clone_ebook/screens/home_screen.dart';
import 'package:clone_ebook/screens/main_screen.dart';
import 'package:clone_ebook/screens/settings_screen.dart';
import 'package:flutter/material.dart';

const String rootRoute = '/';
const String mainRoute = '/main';
const String homeRoute = '/home';
const String exploreRoute = '/explore';
const String settingsRoute = '/settings';
const String bookRoute = '/book';

final navKey = GlobalKey<NavigatorState>();

Route<dynamic>? generateRoute(settings) {
  Uri url = Uri.parse(settings.name);
  String firstPath =
      '/${url.pathSegments.isEmpty ? '' : url.pathSegments.first}';
  switch (firstPath) {
    case rootRoute:
      return pageRoute(const MainScreen());
    case mainRoute:
      return pageRoute(const MainScreen());
    case homeRoute:
      return pageRoute(const HomeScreen());
    case exploreRoute:
      return pageRoute(const ExploreScreen());
    case settingsRoute:
      return pageRoute(const SettingsScreen());
    case bookRoute:
      return pageRoute(BookScreen(id: url.pathSegments.last));
    default:
      return null;
  }
}

Route? pageRoute(Widget child) {
  return MaterialPageRoute(
    builder: (context) => child,
  );
}
