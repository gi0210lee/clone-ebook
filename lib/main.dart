import 'dart:ui';

import 'package:clone_ebook/provider/app_provider.dart';
import 'package:clone_ebook/provider/explore_provider.dart';
import 'package:clone_ebook/provider/home_provider.dart';
import 'package:clone_ebook/routes.dart';
import 'package:clone_ebook/widgets/app_view_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AppProvider()),
        ChangeNotifierProvider(create: (_) => HomeProvider()),
        ChangeNotifierProvider(create: (_) => ExploreProvider()),
      ],
      child: const App(),
    ),
  );
}

class CustomScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AppProvider>(builder: (context, provider, child) {
      return MaterialApp(
        scrollBehavior: CustomScrollBehavior(),
        title: 'clone ebook',
        theme: provider.theme,
        builder: (context, child) {
          return AppView(child: child!);
        },
        initialRoute: rootRoute,
        onGenerateRoute: generateRoute,
        navigatorKey: navKey,
        // routes: appRoutes,
      );
    });
  }
}
