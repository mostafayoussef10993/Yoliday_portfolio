// ignore_for_file: use_super_parameters

import 'package:flutter/material.dart';
import 'package:portofoliopage/common/assets/app_icons.dart';
import 'package:portofoliopage/common/buttons/null_button.dart';

// Common AppBar for Portfolio Page

class PortfolioAppBar extends StatelessWidget implements PreferredSizeWidget {
  const PortfolioAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: const Text(
        'Portfolio',
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: Colors.black, // Color in figma design
        ),
      ),
      centerTitle: false, // to align title to the start (left)
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 16.0),
          child: Row(
            children: const [
              NullButton(iconPath: AppIcons.alarm),
              SizedBox(width: 12), // distance between buttons
              NullButton(iconPath: AppIcons.bag),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
