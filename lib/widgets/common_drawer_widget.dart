import 'package:flutter/material.dart';

class CommonDrawer extends StatelessWidget {
  const CommonDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(children: [
        ListTile(
          leading: const Icon(Icons.home),
          title: const Text('Home'),
          onTap: () {
            Navigator.popAndPushNamed(
              context,
              '/home',
            );
          },
        ),
        ListTile(
          leading: const Icon(Icons.explore),
          title: const Text('Explore'),
          onTap: () {
            Navigator.popAndPushNamed(
              context,
              '/explore',
            );
          },
        ),
        ListTile(
          leading: const Icon(Icons.settings),
          title: const Text('Setting'),
          onTap: () {
            Navigator.popAndPushNamed(
              context,
              '/setting',
            );
          },
        ),
      ]),
    );
  }
}
