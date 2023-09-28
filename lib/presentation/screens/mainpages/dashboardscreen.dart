import 'package:figmaappnew/presentation/screens/Categories/categories.dart';
import 'package:figmaappnew/presentation/screens/cartscreens/emptycart.dart';
import 'package:figmaappnew/presentation/screens/mainpages/homescreen.dart';
import 'package:figmaappnew/presentation/screens/sample.dart';
import 'package:figmaappnew/presentation/screens/wishlist/emptywish.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class Dashboard extends StatefulWidget {
  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _currentIndex = 0;

  final List<Widget> _customIcons = [
    SvgPicture.asset(
      'images/home-2.svg',
      width: 24.0,
      height: 24.0,
    ),
    SvgPicture.asset(
      'images/category-2.svg',
      width: 24.0,
      height: 24.0,
    ),
    SvgPicture.asset(
      'images/shopping-cart.svg',
      width: 24.0,
      height: 24.0,
    ),
    SvgPicture.asset(
      'images/heart.svg',
      width: 24.0,
      height: 24.0,
    ),
    SvgPicture.asset(
      'images/profile.svg',
      width: 24.0,
      height: 24.0,
    ),

  ];

  final List<Widget> _screens = [
     HomeScreen(),
    CategoriesScreen(),
   CartEmptyScreen(),
    WishEmptyScreen(),
  ];

  // Define colors for selected and unselected items
   final Color selectedColor = Color(0xFF21D4B4); // Change to your desired color
  final Color unselectedColor = Color(0xFF6F7384); // Change to your desired color

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        backgroundColor: Color(0xFFFFFFFF),
        items: [
          BottomNavigationBarItem(
            icon: _getCustomIcon(0),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: _getCustomIcon(1),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: _getCustomIcon(2),
            label: 'My Cart',
          ),
          BottomNavigationBarItem(
            icon: _getCustomIcon(3),
            label: 'Wishlist',
          ),
          BottomNavigationBarItem(
            icon: _getCustomIcon(4),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  // Helper method to colorize the icons
  Widget _getCustomIcon(int index) {
    return ColorFiltered(
      colorFilter: ColorFilter.mode(
        _currentIndex == index ? selectedColor : unselectedColor,
        BlendMode.srcIn,
      ),
      child: _customIcons[index],
    );
  }
}
