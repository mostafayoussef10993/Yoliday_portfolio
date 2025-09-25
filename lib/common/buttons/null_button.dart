// ignore_for_file: use_super_parameters

import 'package:flutter/material.dart';

class NullButton extends StatelessWidget {
  final String iconPath;

  const NullButton({Key? key, required this.iconPath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //No action
      },
      child: Container(
        width: 24, // عرض الـ container
        height: 24, // ارتفاع الـ container
        color: Colors.white, // خلفية أبيض
        alignment: Alignment.center,
        child: SizedBox(
          width: 16, // عرض الأيقونة
          height: 20, // ارتفاع الأيقونة
          child: Image.asset(
            iconPath,
            color: Color(0xFFDF5532), // Color in Figma Design #DF5532
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
