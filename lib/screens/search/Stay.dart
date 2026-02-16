
import 'package:booking/controller/FavoritesController.dart';
import 'package:booking/controller/home_controller.dart';
import 'package:booking/screens/provider/favorite_provider.dart';
import 'package:booking/screens/search/favoright.dart';
import 'package:booking/screens/search/search_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';




class Stay extends StatelessWidget { // Changed to StatelessWidget
  Stay({super.key});

  final HomeController controller = Get.put(HomeController());
  final FavoritesController favoritesController = Get.put(FavoritesController());
  final ValueNotifier<int> selectedIndex = ValueNotifier(0);



  final List<Widget> pages = [
    SearchPage(imageUrl: 'https://tse2.mm.bing.net/th/id/OIP.HqgFRddn8dVzuEvEtSnG6AHaEM?rs=1&pid=ImgDetMain&o=7&rm=3'),
    Favoright(),
    const Center(child: Text('Bookings Page', style: TextStyle(fontSize: 24))),
    const Center(child: Text('Sign In Page', style: TextStyle(fontSize: 24))),
  ];


  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<FavoriteProvider>(context);
    final words = provider.words;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Theme.of(context).colorScheme.secondary,
        title: const Text(
          'Booking.com',
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
      ),


      body: SafeArea(
        //only body
        child: Obx(() => pages[controller.selectedIndex.value]),

      ),



      // bottomNavigationBar: Obx(() => BottomNavigationBar(
      //     currentIndex: controller.selectedIndex.value,
      //     onTap: controller.changeIndex, // Use controller method
      //     type: BottomNavigationBarType.fixed,
      //     // showSelectedLabels:
      //     selectedItemColor: Theme.of(context).colorScheme.primary,
      //     unselectedItemColor: Colors.grey[500],
      //     items: [
      //       const BottomNavigationBarItem(
      //         icon: Icon(Icons.search),
      //         label: "Search",
      //       ),


      //     const BottomNavigationBarItem(
      //         icon: Icon(Icons.favorite_border),
      //         label: "Saved",
      //       ),


      //       const BottomNavigationBarItem(
      //         icon: Icon(Icons.bookmark_border),
      //         label: "Bookings",
      //       ),
      //       const BottomNavigationBarItem(
      //         icon: Icon(Icons.person_outline),
      //         label: "My Account",
      //       ),
      //     ],
      //   ),
      // ),



    );
  }
}