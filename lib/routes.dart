import 'package:clone_ebook/screens/explore_screen.dart';
import 'package:clone_ebook/screens/home_screen.dart';
import 'package:clone_ebook/screens/main_screen.dart';
import 'package:clone_ebook/screens/settings_screen.dart';
import 'package:flutter/material.dart';

const String rootRoute = '/';
const String mainRoute = '/main';
const String homeRoute = '/home';
const String exploreRoute = '/explore';
const String settingRoute = '/setting';

Map<String, WidgetBuilder> get appRoutes {
  return <String, WidgetBuilder>{
    rootRoute: (context) => const MainScreen(),
    mainRoute: (context) => const MainScreen(),
    homeRoute: (context) => const HomeScreen(),
    exploreRoute: (context) => const ExploreScreen(),
    settingRoute: (context) => const SettingsScreen(),
  };
}
