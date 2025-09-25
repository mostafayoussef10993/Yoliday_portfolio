import 'package:flutter/material.dart';
import 'package:portofoliopage/common/assets/app_icons.dart';
import 'package:portofoliopage/common/buttons/nav_buttons.dart';
import 'package:portofoliopage/presentation/home_page.dart';
import 'package:portofoliopage/presentation/input_page.dart';
import 'package:portofoliopage/presentation/portfolio/portfolio_page.dart';
import 'package:portofoliopage/presentation/profile_page.dart';

class CommonBotBar extends StatefulWidget {
  final int defaultIndex;
  const CommonBotBar({super.key, this.defaultIndex = 0}); // Portfolio = 0

  @override
  State<CommonBotBar> createState() => _CommonBotBarState();
}

class _CommonBotBarState extends State<CommonBotBar> {
  late int _selectedIndex;

  final List<Widget> _pages = const [
    PortfolioPage(),
    HomePage(),
    InputPage(),
    ProfilePage(),
  ];

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.defaultIndex;
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        height: 60,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            BottomNavButton(
              iconPath: AppIcons.portofolio,
              label: "Portfolio",
              index: 0,
              selectedIndex: _selectedIndex,
              onTap: _onItemTapped,
            ),
            BottomNavButton(
              iconPath: AppIcons.home,
              label: "Home",
              index: 1,
              selectedIndex: _selectedIndex,
              onTap: _onItemTapped,
            ),
            BottomNavButton(
              iconPath: AppIcons.input,
              label: "Input",
              index: 2,
              selectedIndex: _selectedIndex,
              onTap: _onItemTapped,
            ),
            BottomNavButton(
              iconPath: AppIcons.profile,
              label: "Profile",
              index: 3,
              selectedIndex: _selectedIndex,
              onTap: _onItemTapped,
            ),
          ],
        ),
      ),
    );
  }
}
