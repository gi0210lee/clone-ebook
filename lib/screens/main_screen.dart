import 'package:clone_ebook/screens/explore_screen.dart';
import 'package:clone_ebook/screens/home_screen.dart';
import 'package:clone_ebook/screens/settings_screen.dart';
import 'package:clone_ebook/util/consts.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedIndex = 0;

  final mainScreens = [
    const HomeScreen(),
    const ExploreScreen(),
    const SettingsScreen(),
  ];

  onItemTap(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MediaQuery.of(context).size.width < Constants.widthSm
          ? BottomNavigationBar(
              currentIndex: selectedIndex,
              onTap: onItemTap,
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.explore),
                  label: 'Explore',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.settings),
                  label: 'Settings',
                ),
              ],
            )
          : null,
      body: Row(
        children: [
          if (MediaQuery.of(context).size.width >= Constants.widthSm)
            NavigationRail(
              selectedIndex: selectedIndex,
              onDestinationSelected: onItemTap,
              labelType: NavigationRailLabelType.all,
              destinations: const [
                NavigationRailDestination(
                  icon: Icon(Icons.home),
                  label: Text('Home'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.explore),
                  label: Text('Explore'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.settings),
                  label: Text('Settings'),
                ),
              ],
            ),
          Expanded(
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: mainScreens[selectedIndex],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
