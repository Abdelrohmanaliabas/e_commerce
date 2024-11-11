import 'package:e_commerce/constant/constant.dart';
import 'package:e_commerce/screens/cart_view.dart';
import 'package:e_commerce/screens/search_view.dart';
import 'package:e_commerce/screens/setting_view.dart';
import 'package:e_commerce/screens/wish_list_view.dart';
import 'package:e_commerce/widget/home_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    const HomeViewBody(),
    const WishListView(),
    const CartView(),
    const SearchView(),
    const SettingView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff9f9f9),
      body: _screens[_currentIndex], // تغيير محتوى body بناءً على _currentIndex
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: kLogoColor,
        unselectedItemColor: Colors.black,
        selectedIconTheme: const IconThemeData(size: 30),
        unselectedIconTheme: const IconThemeData(size: 24),
        selectedLabelStyle:
            const TextStyle(fontWeight: FontWeight.bold, color: kLogoColor),
        unselectedLabelStyle:
            const TextStyle(fontWeight: FontWeight.normal, color: Colors.black),
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_work_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.heart),
            label: 'Wishlist',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_checkout_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_outlined),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
