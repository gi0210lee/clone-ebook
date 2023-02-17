import 'package:clone_ebook/navbar/navbar_item.dart';
import 'package:clone_ebook/navbar/navbar_logo.dart';
import 'package:clone_ebook/routes.dart';
import 'package:flutter/material.dart';

import '../widgets/responsible_container_widget.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 2),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 3,
            offset: const Offset(0, 1),
            color: Colors.grey.withOpacity(0.5),
          )
        ],
      ),
      child: ResponsibleContainer(
        child: Row(
          children: [
            const NavbarLogo(
              icon: Icon(Icons.menu_book),
              title: 'E-Book',
              routeName: rootRoute,
            ),
            const Spacer(),
            Row(
              children: const [
                NavbarItem(
                  title: 'Explore',
                  routeName: exploreRoute,
                ),
                NavbarItem(
                  title: 'Settings',
                  routeName: settingsRoute,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
