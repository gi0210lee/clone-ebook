import 'package:flutter/material.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key, required this.state, required this.child});

  final bool state;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return state ? const Center(child: CircularProgressIndicator()) : child;
  }
}
