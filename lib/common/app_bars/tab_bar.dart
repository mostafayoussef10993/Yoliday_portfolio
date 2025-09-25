import 'package:flutter/material.dart';

class CustomTabBar extends StatefulWidget {
  const CustomTabBar({super.key});

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> {
  int selectedIndex = 0;

  final List<String> tabs = ['Project', 'Saved', 'Shared', 'Achievement'];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(
            tabs.length,
            (index) => GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    tabs[index],
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: selectedIndex == index
                          ? const Color(0xFFDF5532)
                          : const Color(0xFF303030),
                    ),
                  ),
                  const SizedBox(height: 4),
                  // Line under each tab
                  Container(
                    width: 80,
                    height: 2,
                    decoration: BoxDecoration(
                      color: selectedIndex == index
                          ? const Color(0xFFDF5532)
                          : const Color(0xFFE0E0E0),
                      borderRadius: BorderRadius.circular(1),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
