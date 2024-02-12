

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smartrefresh/smartrefresh.dart';

class WRefresher extends StatelessWidget {
  final RefreshController controller;
  final Widget child;
  final VoidCallback onRefresh;
  const WRefresher({super.key,
  required this.child,
  required this.onRefresh,
  required this.controller});

  @override
  Widget build(BuildContext context) {
    return PullToRefresh(
        onFail: const SizedBox(),
        onComplete: const SizedBox(),
        onLoading: const Text(''),
        onRefresh: onRefresh,
        refreshController: controller,
      child: child,);
  }
}
