import 'package:clone_ebook/provider/home_provider.dart';
import 'package:clone_ebook/widgets/category_sction_widget.dart';
import 'package:clone_ebook/widgets/featured_section_widget.dart';
import 'package:clone_ebook/widgets/loading_widget.dart';
import 'package:clone_ebook/widgets/recently_section_widget.dart';
import 'package:clone_ebook/widgets/section_title_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(
      builder: (context, provider, child) {
        return LoadingWidget(
          state: provider.isLoading,
          child: RefreshIndicator(
            onRefresh: () async {
              return provider.setTopAndRecent();
            },
            child: buildList(provider),
          ),
        );
      },
    );
  }

  Widget buildList(HomeProvider provider) {
    return ListView(
      children: [
        FeaturedSection(homeProvider: provider),
        const SizedBox(height: 20),
        const SectionTitle(title: 'Category'),
        CategorySection(homeProvider: provider),
        const SizedBox(height: 20),
        const SectionTitle(title: 'Recently Added'),
        RecentlySection(homeProvider: provider),
      ],
    );
  }
}
