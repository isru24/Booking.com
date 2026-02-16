
// import 'package:booking/screens/search/Stay.dart';
// import 'package:booking/screens/search/carRental.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:get/get.dart';



// import 'home_page.dart';


// class Appbar extends StatelessWidget {
//   const Appbar({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: PreferredSize(

//         preferredSize: const Size.fromHeight(100),
//         child: AppBar(
//           automaticallyImplyLeading: false,
//           backgroundColor: Theme
//               .of(context)
//               .colorScheme
//               .secondary,
//           flexibleSpace: SafeArea(
//             child: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 12),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [

//                   const SizedBox(height: 12),
//                   SizedBox(
//                     height: 40,
//                     child: ListView(
//                       scrollDirection: Axis.horizontal,
//                       children: [
//                         Container(
//                           margin: const EdgeInsets.only(right: 8),
//                           padding: const EdgeInsets.symmetric(horizontal: 14),
//                           alignment: Alignment.center,
//                           decoration: BoxDecoration(
//                             color: Colors.white.withOpacity(0.2),
//                             borderRadius: BorderRadius.circular(20),

//                           ),


//                           child: TextButton.icon(
//                             onPressed: () {
//                               Get.to(()=>Stay());
//                              },
//                             icon: Icon(Icons.hotel),
//                             label: Text(
//                               "Stay",
//                               style: TextStyle(color: Colors.white),
//                             ),
//                           ),


//                         ),
//                         Container(
//                           margin: const EdgeInsets.only(right: 8),
//                           padding: const EdgeInsets.symmetric(horizontal: 14),
//                           alignment: Alignment.center,
//                           decoration: BoxDecoration(
//                             color: Colors.white.withOpacity(0.2),
//                             borderRadius: BorderRadius.circular(20),
//                             // border: Border.all(color: Colors.white),
//                           ),
//                           child: TextButton.icon(
//                             onPressed: () {
//                             Get.to(()=>Carrental(imageUrl:'https://tse2.mm.bing.net/th/id/OIP.HqgFRddn8dVzuEvEtSnG6AHaEM?rs=1&pid=ImgDetMain&o=7&rm=3')
//                             );
//                             },
//                             icon: Icon(Icons.car_rental),
//                             label: Text(
//                               "CarRental",
//                               style: TextStyle(color: Colors.white),
//                             ),
//                           ),
//                         ),
//                         Container(
//                           margin: const EdgeInsets.only(right: 8),
//                           padding: const EdgeInsets.symmetric(horizontal: 14),
//                           alignment: Alignment.center,
//                           decoration: BoxDecoration(
//                             color: Colors.white.withOpacity(0.2),
//                             borderRadius: BorderRadius.circular(20),
//                             // border: Border.all(color: Colors.white),
//                           ),

//                           child: TextButton.icon(
                            
//                             onPressed: () {

//                             },
//                             icon: Icon(Icons.flight_takeoff),
//                             label: Text(
//                               "Flights",
//                               style: TextStyle(color: Colors.white),
//                             ),
//                           ),
//                         ),
//                         Container(
//                           margin: const EdgeInsets.only(right: 8),
//                           padding: const EdgeInsets.symmetric(horizontal: 14),
//                           alignment: Alignment.center,
//                           decoration: BoxDecoration(
//                             color: Colors.white.withOpacity(0.2),
//                             borderRadius: BorderRadius.circular(20),
//                             // border: Border.all(color: Colors.white),
//                           ),
//                           child: TextButton.icon(
//                             onPressed: () {},
//                             icon: Icon(Icons.airport_shuttle),
//                             label: Text(
//                               "Airportt Taxis",
//                               style: TextStyle(color: Colors.white),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//       // drawer: Drawer(),

//     );
//   }
// }

