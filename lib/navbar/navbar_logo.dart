import 'package:clone_ebook/routes.dart';
import 'package:clone_ebook/util/consts.dart';
import 'package:flutter/material.dart';

class NavbarLogo extends StatelessWidget {
  final Widget icon;
  final String title;
  final String routeName;

  const NavbarLogo({
    super.key,
    required this.icon,
    required this.title,
    required this.routeName,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onNavTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            IconTheme(
              data: IconThemeData(
                color: Colors.lightBlue,
                size: Constants.xxLarge,
              ),
              child: icon,
            ),
            const SizedBox(width: 10),
            Text(
              title,
              style: TextStyle(
                color: Colors.black54,
                fontSize: Constants.xLarge,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void onNavTap() {
    navKey.currentState?.pushNamed(routeName);
  }
}
