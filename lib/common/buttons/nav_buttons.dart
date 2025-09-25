import 'package:flutter/material.dart';

class BottomNavButton extends StatelessWidget {
  final String iconPath;
  final String label;
  final int index;
  final int selectedIndex;
  final Function(int) onTap;

  const BottomNavButton({
    super.key,
    required this.iconPath,
    required this.label,
    required this.index,
    required this.selectedIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final bool isSelected = index == selectedIndex;

    return GestureDetector(
      onTap: () => onTap(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: 24,
            height: 24,
            child: Image.asset(
              iconPath,
              color: isSelected
                  ? const Color(0xFFDF5532)
                  : const Color(0xFFD6D1D5),
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: isSelected
                  ? const Color(0xFFDF5532)
                  : const Color(0xFFD6D1D5),
            ),
          ),
        ],
      ),
    );
  }
}
