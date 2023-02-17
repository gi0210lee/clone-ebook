import 'package:clone_ebook/models/book_modal.dart';
import 'package:clone_ebook/provider/home_provider.dart';
import 'package:clone_ebook/util/consts.dart';
import 'package:clone_ebook/widgets/book_card_widget.dart';
import 'package:flutter/material.dart';

class RecentlySection extends StatelessWidget {
  final HomeProvider homeProvider;

  const RecentlySection({
    super.key,
    required this.homeProvider,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: homeProvider.recent.feed!.entry!.length,
      itemBuilder: (context, index) {
        Entry entry = homeProvider.recent.feed!.entry![index];
        Uri uri = Uri.parse(entry.id!.t as String);
        // String id = uri.fragment[1];
        return Row(
          children: [
            BookCard(
              imageUrl: entry.link![1].href as String,
              // id: id,
            ),
            const SizedBox(width: 10),
            Flexible(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    entry.title!.t as String,
                    style: TextStyle(
                      fontSize: Constants.large,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 1,
                  ),
                  const SizedBox(height: 5),
                  Text(
                    entry.author![0].name!.t as String,
                    style: TextStyle(
                      fontSize: Constants.medium,
                      fontWeight: FontWeight.bold,
                      color: Colors.lightBlue,
                    ),
                    maxLines: 1,
                  ),
                  const SizedBox(height: 5),
                  Text(
                    entry.summary!.t as String,
                    style: TextStyle(
                      fontSize: Constants.medium,
                      color: Colors.grey,
                    ),
                    softWrap: true,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            )
          ],
        );
      },
    );
  }
}
