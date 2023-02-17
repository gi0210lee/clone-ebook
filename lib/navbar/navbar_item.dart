import 'package:clone_ebook/routes.dart';
import 'package:clone_ebook/util/consts.dart';
import 'package:flutter/material.dart';

class NavbarItem extends StatefulWidget {
  final String title;
  final String routeName;

  const NavbarItem({
    super.key,
    required this.title,
    required this.routeName,
  });

  @override
  State<NavbarItem> createState() => _NavbarItemState();
}

class _NavbarItemState extends State<NavbarItem> {
  bool isHovering = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onNavTap,
      onHover: onNavHover,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          widget.title,
          style: TextStyle(
            color: isHovering ? Colors.lightBlue : Colors.black54,
            fontSize: Constants.medium,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
    );
  }

  void onNavTap() {
    navKey.currentState?.pushNamed(widget.routeName);
  }

  void onNavHover(bool value) {
    setState(() {
      isHovering = value;
    });
  }
}
