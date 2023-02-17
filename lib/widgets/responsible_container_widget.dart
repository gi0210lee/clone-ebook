import 'package:clone_ebook/util/consts.dart';
import 'package:flutter/material.dart';

class ResponsibleContainer extends StatelessWidget {
  final Widget child;
  const ResponsibleContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    double responsivleWidth = MediaQuery.of(context).size.width;
    // bool isWeb;
    bool isMaxWidth;
    // responsivleWidth > Constants.widthSm ? isWeb = true : isWeb = false;
    responsivleWidth > Constants.widthXxl
        ? isMaxWidth = true
        : isMaxWidth = false;
    double space = isMaxWidth
        ? (responsivleWidth - Constants.widthXxl) / 2 + Constants.xxSmall
        : Constants.xxSmall;
    return Row(
      children: [
        SizedBox(width: space),
        Expanded(child: child),
        SizedBox(width: space),
      ],
    );
  }
}
