// ignore_for_file: file_names

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class IconMedia extends StatelessWidget {
  String StrIconImage;
  IconMedia({super.key, required this.StrIconImage});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: CircleAvatar(
          radius: 40,
          child: Image.asset('assets/$StrIconImage'),
        ),
      ),
      onTap: () {},
    );
  }
}
