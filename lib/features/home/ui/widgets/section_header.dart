import 'package:flutter/material.dart';
import 'package:music_app/core/utils/style_manager.dart';

class SectionHeader extends StatelessWidget {
  const SectionHeader({super.key, required this.title, this.action});

  final String title;
  final Widget? action;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: StyleManager.black16Bold),
        action ??
            TextButton(
              onPressed: () {},
              child: Text('مشاهدة الكل', style: StyleManager.indigo12Regular),
            ),
      ],
    );
  }
}
