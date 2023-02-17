import 'package:clone_ebook/widgets/responsible_container_widget.dart';
import 'package:flutter/material.dart';

class BookScreen extends StatelessWidget {
  final String id;

  const BookScreen({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    print(id);
    return Scaffold(
      body: ResponsibleContainer(
        child: Text(id),
      ),
    );
  }
}
