import 'package:clone_ebook/provider/home_provider.dart';
import 'package:clone_ebook/util/consts.dart';
import 'package:flutter/material.dart';

class CategorySection extends StatelessWidget {
  final HomeProvider homeProvider;
  const CategorySection({
    super.key,
    required this.homeProvider,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: homeProvider.top.feed!.link!.length,
        itemBuilder: (context, index) {
          if (index < 10) {
            return const SizedBox();
          } else {
            return Container(
              margin: const EdgeInsets.all(8.0),
              padding: const EdgeInsets.all(8.0),
              decoration: const BoxDecoration(
                color: Colors.lightBlue,
                borderRadius: BorderRadius.all(Radius.circular(45)),
              ),
              child: Center(
                child: Text(
                  '${homeProvider.top.feed!.link![index].title}',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: Constants.medium,
                  ),
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
