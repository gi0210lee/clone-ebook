import 'package:clone_ebook/util/consts.dart';
import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            title,
            style: TextStyle(fontSize: Constants.xLarge),
          ),
        ),
        const SizedBox(
          height: 10,
        )
      ],
    );
  }
}
