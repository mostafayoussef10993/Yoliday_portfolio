// features/portfolio/presentation/widgets/search_bar_widget.dart
import 'package:flutter/material.dart';
import 'package:portofoliopage/common/assets/app_icons.dart';

class SearchBarWidget extends StatelessWidget {
  final TextEditingController controller;
  final Function(String) onSearch;

  const SearchBarWidget({
    super.key,
    required this.controller,
    required this.onSearch,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343,
      height: 44,
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFFE0E0E0), width: 1),
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: TextField(
                controller: controller,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: "Search...",
                ),
                onChanged: onSearch,
              ),
            ),
          ),
          Container(
            width: 28,
            height: 28,
            margin: const EdgeInsets.only(right: 8),
            decoration: BoxDecoration(
              color: const Color(0xFFDF5532),
              borderRadius: BorderRadius.circular(6),
            ),
            child: Center(
              child: Image.asset(
                AppIcons.search,
                width: 12,
                height: 12,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
