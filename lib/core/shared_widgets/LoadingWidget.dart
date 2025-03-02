import 'package:flutter/material.dart';
import 'package:task/core/themes/color_app.dart';


class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator.adaptive(
        valueColor: AlwaysStoppedAnimation<Color>(ColorApp.kBlueColor),
      ),
    );
  }
}