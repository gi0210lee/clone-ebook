import 'package:clone_ebook/provider/app_provider.dart';
import 'package:clone_ebook/util/consts.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  late SharedPreferences prefs;

  @override
  void initState() {
    super.initState();

    initPrefs();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          favoriteTile(),
          downloadTile(),
          themeTile(),
          aboutTile(),
          licenseTile(),
        ],
      ),
    );
  }

  void onSwitchChanged(bool value) {
    Provider.of<AppProvider>(context, listen: false).setTheme(value);
  }

  Future initPrefs() async {
    prefs = await SharedPreferences.getInstance();
  }

  Widget favoriteTile() {
    return ListTile(
      title: const Text('Favorites'),
      onTap: () => {},
      leading: const Icon(Icons.favorite),
    );
  }

  Widget downloadTile() {
    return ListTile(
      title: const Text('Downloads'),
      onTap: () => {},
      leading: const Icon(Icons.file_download_outlined),
    );
  }

  Widget themeTile() {
    return SwitchListTile(
      title: const Text('Dark Theme'),
      value: Provider.of<AppProvider>(context).getTheme() == Constants.darkMode
          ? true
          : false,
      onChanged: onSwitchChanged,
      secondary: const Icon(Icons.dark_mode),
    );
  }

  Widget aboutTile() {
    return ListTile(
      title: const Text('About'),
      onTap: () => {},
      leading: const Icon(Icons.info),
    );
  }

  Widget licenseTile() {
    return ListTile(
      title: const Text('License'),
      onTap: () => {},
      leading: const Icon(Icons.description),
    );
  }
}
