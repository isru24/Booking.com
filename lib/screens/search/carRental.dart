import 'package:booking/controller/itemController.dart';
import 'package:booking/screens/screen/Appbar.dart';
import 'package:booking/screens/search/TestDetail.dart';
import 'package:booking/screens/search/genius_desctiption.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



class Carrental extends StatelessWidget {
  // final String imageUrl;
  ItemControle controller = Get.put(ItemControle());
  // Carrental({super.key,required this.imageUrl});
  Color getItemColor(String item) {
    if (item.startsWith('Genius')) {
      return Colors.blue;

    }
    // if (item == 'Flight') {
    //   return Colors.green;
    // }
    // if (item == 'Car Rental') {
    //   return Colors.blue;
    // }
    // if (item == 'Taxi') {
    //   return Colors.orange;
    // }
    // if (item == 'Hotel') {
    //   return Colors.purple;
    // }
    return Colors.white24;
  }


  @override
  Widget build(BuildContext context) {


       final List<String> items = [
      "Genius\nkebede you're at Genius\nLevel 1 in our loyalty\nprogramme",
      "10% discount on \n rental car \n Enjoiy Dicount at particularly",
      "10% discount on \n rental car \n save on select rental",
      "10%-15% discount on stay \ncompblit 5 booking",
      "10%-15% discount on stay \ncompblit 5 booking",
      "Free BreakFast",
    ];



    return Scaffold(
      appBar: PreferredSize(

        preferredSize: const Size.fromHeight(70),
        child: Center(child:Text('carRental')),
      ),





      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(

          children: [

            const Text(
              "Popular car hire brands",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10,),

            Container(
              padding: EdgeInsets.all(10),
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: const DecorationImage(
                  image: AssetImage("assets/images/Cars-Logo-PNG.png"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                children: [
                  Row(

                  )
                ],
              ),
            ),








            const SizedBox(height: 10,),
            const Text(
              "Travel more, spend less",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 150, // height of cards
              child: ListView.builder(
                scrollDirection: Axis.horizontal, // horizontal scroll
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: (){
                      Get.to(()=>GeniusDesctiption());
                    },
                    child: Container(
                      width: 250,
                      margin: const EdgeInsets.only(right: 12), // space between cards
                      padding: const EdgeInsets.all(16),

                      decoration: BoxDecoration(

                        border: Border.all(
                            width: 0.2
                        ),
                        // color: const Color.fromARGB(255, 128, 128, 128),
                        color: getItemColor(items[index]),
                        borderRadius: BorderRadius.circular(12),

                      ),
                      child: Center(
                        child: Text(
                          items[index],
                          style: const TextStyle(
                            color: Colors.black87,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 10,),

            const Text(
              "Continuer your search new one",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height:6,),

            SizedBox(
              height: 200, // height of cards
              child: ListView.builder(
                scrollDirection: Axis.horizontal, // horizontal scroll
                itemCount: 4,
                itemBuilder: (context, index) {
                  final item =controller.itemList[index];

                  return Container(
                    margin: EdgeInsets.all(10),
                    height:70,
                    width: 300,

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),


                    ),

                    child: Center(
                      child: Column(
                        children: [
                          Container(
                            height:70,
                            width: 300,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 0.2
                                ),
                                borderRadius: BorderRadius.circular(12)

                            ),

                            child: ListTile(
                              onTap: (){
                                // Get.to(()=>TestDetail(item: item,));
                              },
                              leading: Text("IM"),
                              title: Text("Addis Abab"),
                              subtitle: Text("13-15 feb 2 adul"),
                            ),
                          ),

                          const SizedBox(height: 20,),
                          Container(
                            height:70,
                            width: 300,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 0.2
                                ),
                                borderRadius: BorderRadius.circular(12)

                            ),

                            child: ListTile(
                              onTap: (){
                                Get.to(()=>TestDetail(item: item,));
                              },
                              leading: Text("IM"),
                              title: Text("Addis Abab"),
                              subtitle: Text("13-15 feb 2 adul"),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );


                },
              ),
            ),
            const SizedBox(height: 20),
            // ClipRRect(
            //   borderRadius: BorderRadius.circular(10),
            //   child: Image.network(
            //     imageUrl,
            //     height: 150,
            //     width: double.infinity,
            //     fit: BoxFit.cover,

            //     errorBuilder: (context, error, stackTrace) {
            //       return Container(
            //         height: 150,
            //         width: double.infinity,
            //         color: Colors.grey[300],
            //         child: const Center(
            //           child: Icon(
            //             Icons.broken_image,
            //             size: 40,
            //             color: Colors.red,
            //           ),
            //         ),
            //       );
            //     },
            //   ),
            // ),

            // const SizedBox(height:6,),
            const Text(
              "Continuer your search",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 40),
            SizedBox(
              height: 200, // height of cards
              child: ListView.builder(
                scrollDirection: Axis.horizontal, // horizontal scroll
                itemCount: controller.itemList.length,
                itemBuilder: (context, index) {
                  final item =controller.itemList[index];
                  return GestureDetector(
                    onTap: (){
                      Get.to(()=>TestDetail(item: item,));
                    },
                    child: Container(

                      width: 150,
                      height: 400,
                      margin: const EdgeInsets.only(right: 12), // space between cards
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            width: 0.2,
                          )
                      ),
                      child: Center(
                        child: ListView(
                          children: [
                            Image.network(item.image,
                              width: 80,height: 100,),
                            const SizedBox(height: 10,),
                            Center(child: Text(item.title,style: TextStyle(fontSize: 13),)),
                            Center(child: Text(item.desc,style: TextStyle(fontSize: 13),)),

                          ],

                        ),




                      ),
                    ),
                  );

                },
              ),
            ),
            const SizedBox(height: 40),






            const Text(
              "Offers",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text('promotions, deals and special offers for you'),
            SizedBox(height: 7,),
            Container(
              height: 70,
              width: 60,
              padding: EdgeInsets.only(left: 10),
              child: ListView(
                children: [

                  Text('Eraly conrole'),
                  SizedBox(height: 2,),
                  Text('Eraly conrole samp desctipion this one'),

                ],
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                      width: 0.3

                  )
              ),
            )
          ],

        ),
      ),

    );
  }
}
