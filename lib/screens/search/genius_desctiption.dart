
import 'package:flutter/material.dart';

// class GeniusDesctiption extends StatelessWidget {
//   const GeniusDesctiption({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Genius loyalty programme"),
//         backgroundColor:Theme.of(context).colorScheme.primary
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//         // ===== HEADER IMAGE =====
//         Stack(
//         children: [
//         Image.network(
//           "https://images.unsplash.com/photo-1505693416388-ac5ce068fe85",
//           height: 220,
//           width: double.infinity,
//           fit: BoxFit.cover,
//         ),
//         Positioned.fill(
//           child: Container(color: Colors.black.withOpacity(0.3)),
//         ),
//         Positioned(
//           left: 20,
//           bottom: 30,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: const [
//               Center(
//                 child: Text(
//                   "Get rewarded for being you",
//                   style: TextStyle(color: Colors.white, fontSize: 16),
//                 ),
//               ),
//               SizedBox(height: 6),
//               Center(
//                 child: Text(
//                   "Genius",
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 36,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//         ],
//       ),
//
//       const SizedBox(height: 16),
//
//       // ===== CARD =====
//       Center(
//         child: Card(
//           margin: const EdgeInsets.all(16),
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(16),
//
//           ),
//           child: Padding(
//             padding: const EdgeInsets.all(16),
//             child: Container(
//               // color: Colors.grey[200],
//               height: 200,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   const Text(
//                     "Some one, you're at Level 1!",
//                     style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                   ),
//                   const SizedBox(height: 10),
//                   const Text(
//                     "Complete 5 bookings within 2 years to "
//                         "unlock Level 2 discounts and rewards -"
//                         "every booking counts",
//                   ),
//                   const SizedBox(height: 16),
//
//                   // circles
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: List.generate(
//                       5,
//                           (index) => CircleAvatar(
//                         radius: 17,
//
//                         backgroundColor: Colors.grey.shade400,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//
//       const SizedBox(height: 10),
//
//       // ===== TEXT =====
//       const Padding(
//         padding: EdgeInsets.all(16),
//         child: Align(
//           alignment: Alignment.centerLeft,
//           child: Text(
//             "Book your next trip for less",
//             style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
//           ),
//         ),
//       ),
//
//             // ===== SECOND CARD =====
//             Card(
//               margin: const EdgeInsets.symmetric(horizontal: 16),
//               child: ListTile(
//                 leading: const Icon(Icons.percent, size: 36, color: Colors.blue),
//                 title: const Text("Genius discounts"),
//                 subtitle: const Text(
//                     "Enjoy savings at participating properties worldwide."),
//               ),
//             ),
//
//             const SizedBox(height: 20),
//
//             // ===== BUTTON =====
//             Padding(
//               padding: const EdgeInsets.all(16),
//               child: SizedBox(
//                 width: double.infinity,
//                 child: ElevatedButton(
//                   style: ElevatedButton.styleFrom(
//                     padding: const EdgeInsets.all(14),
//                     backgroundColor: Colors.blue.shade800,
//                   ),
//                   onPressed: () {},
//                   child: const Text(
//                     "Find your next stay",
//                     style: TextStyle(fontSize: 16),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }



import 'package:flutter/material.dart';
import 'package:get/get.dart';


class GeniusDesctiption extends StatelessWidget {
  GeniusDesctiption({super.key});

 

  @override
  Widget build(BuildContext context) {


    // return MaterialApp(
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            child: Container(
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    "https://images.unsplash.com/photo-1505693416388-ac5ce068fe85",
                  ),
                  fit: BoxFit.fill,
                ),
              ),

              child: Container(
                padding: EdgeInsets.only(top: 90, left: 20),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: "Wellcome to",
                        style: TextStyle(
                          letterSpacing: 3,
                          fontSize: 25,
                          color: Colors.yellow[700],
                        ),
                        children: [
                          TextSpan(
                            text: "Acccc Hottel",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.yellow[700],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          Positioned(
            top: 200,
            child: Container(
              height: 380,
              width: MediaQuery.of(context).size.width - 40,
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    blurRadius: 15,
                    spreadRadius: 5,
                  ),
                ],
              ),
       child: Container(
         height: 200,
         // color: Colors.yellow,
         child:
         Center(
        child: Card(
          margin: const EdgeInsets.all(16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),

          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Container(
              // color: Colors.grey[200],
              height: 200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Some one, you're at Level 1!",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Complete 5 bookings within 2 years to "
                        "unlock Level 2 discounts and rewards -"
                        "every booking counts",
                  ),
                  const SizedBox(height: 16),

                  // circles
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(
                      5,
                          (index) => CircleAvatar(
                        radius: 17,

                        backgroundColor: Colors.grey.shade400,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),


       ),
            ),
          ),
          Positioned(
            top: 800,
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Container(
                color: Colors.red,
                height: 200,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Book your next trip for less",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
    // );
  }
}
