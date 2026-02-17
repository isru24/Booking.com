import 'package:booking/screens/booking/booking.dart';
import 'package:booking/screens/profile.dart';
import 'package:booking/screens/screen/home_page.dart';
import 'package:booking/screens/search/favoright.dart';
import 'package:booking/screens/search/search.dart';
import 'package:booking/screens/search/search_page.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages =[
    HomePage(),
    // Search(),
    
      //  SearchPage(imageUrl: 'https://tse2.mm.bing.net/th/id/OIP.HqgFRddn8dVzuEvEtSnG6AHaEM?rs=1&pid=ImgDetMain&o=7&rm=3'),
    Favoright(),
     Booking(),
      Profile()
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _selectedIndex, children: _pages),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (i) => setState(() => _selectedIndex = i),
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: 'Saved',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.cases_outlined),
            label: 'Bookings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
