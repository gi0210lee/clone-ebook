import 'package:clone_ebook/navbar/navbar.dart';
import 'package:clone_ebook/widgets/responsible_container_widget.dart';
import 'package:flutter/material.dart';

class AppView extends StatelessWidget {
  final Widget child;

  const AppView({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Navbar(),
          Expanded(child: ResponsibleContainer(child: child))
        ],
      ),
    );
  }
}
