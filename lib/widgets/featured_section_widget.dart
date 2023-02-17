import 'package:clone_ebook/models/book_modal.dart';
import 'package:clone_ebook/provider/home_provider.dart';
import 'package:clone_ebook/widgets/book_card_widget.dart';
import 'package:flutter/material.dart';

class FeaturedSection extends StatelessWidget {
  const FeaturedSection({
    super.key,
    required this.homeProvider,
  });

  final HomeProvider homeProvider;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: homeProvider.top.feed!.entry!.length,
        itemBuilder: (context, index) {
          Entry entry = homeProvider.top.feed!.entry![index];
          final uri = Uri.parse(entry.id!.t as String);
          final id = uri.pathSegments[1];
          return BookCard(
            imageUrl: entry.link![1].href as String,
            id: id,
          );
        },
      ),
    );
  }
}
