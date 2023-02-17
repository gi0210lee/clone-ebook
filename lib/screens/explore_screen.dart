import 'package:clone_ebook/models/book_modal.dart';
import 'package:clone_ebook/provider/explore_provider.dart';
import 'package:clone_ebook/services/api_service.dart';
import 'package:clone_ebook/util/consts.dart';
import 'package:clone_ebook/widgets/book_card_widget.dart';
import 'package:clone_ebook/widgets/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ExploreProvider>(
      builder: (context, provider, child) {
        return LoadingWidget(
          state: provider.isLoading,
          child: ListView.builder(
            itemCount: provider.titles.length,
            itemBuilder: (context, index) {
              // BookModal explore = provider.explores[index];
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    sectionHeader(provider.titles[index]),
                    const SizedBox(height: 10),
                    sectionBook(provider.hrefs[index]),
                    const SizedBox(height: 20),
                  ],
                ),
              );
            },
          ),
        );
      },
    );
  }

  Widget sectionHeader(String title) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Text(
              title,
              style: TextStyle(
                fontSize: Constants.xLarge,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ),
          Text(
            'See All',
            style: TextStyle(
              fontSize: Constants.large,
              color: Colors.lightBlue,
            ),
          ),
        ],
      ),
    );
  }

  Widget sectionBook(String href) {
    // BookModal explore = await ApiService.getQuery(link.href as String);
    // explores.add(explore);
    return FutureBuilder<BookModal>(
      future: ApiService.getQuery(href),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          BookModal bookModal = snapshot.data!;
          return SizedBox(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: bookModal.feed!.entry!.length,
              itemBuilder: (context, index) {
                Entry entry = bookModal.feed!.entry![index];
                Uri uri = Uri.parse(entry.id!.t as String);
                String id = uri.fragment[1];
                return BookCard(
                  imageUrl: entry.link![1].href as String,
                  // id: id,
                );
              },
            ),
          );
        } else if (snapshot.hasError) {
          return Text('${snapshot.error}');
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
