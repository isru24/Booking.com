import 'package:flutter/material.dart';
class Select extends StatefulWidget {
  const Select({super.key});

  @override
  State<Select> createState() => _SelectState();
}

class _SelectState extends State<Select> {
  int selectedIndex = 0;
  final List<String> titles = [
    "Atraction",
    "Eat and drink",
    "Transport",
  ];

  final List<String> descriptions = [
    "This is the overview description of the hotel.",
    "Free WiFi, Parking, Restaurant, Pool.",
    "Check-in after 2 PM. No pets allowed.",
  ];




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body:SafeArea(
        
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.all(10),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:<Widget> [
              Text("Hotel Lobelia",style: TextStyle(fontSize: 30, fontWeight: FontWeight(300)),),
              Text("Hotel Lobelia",style: TextStyle(fontSize: 30, fontWeight: FontWeight(300)),),

              const SizedBox(height: 10,),
              Container(
                height: 150,
                width:double.infinity,
                child: Text('sample'),
                decoration: BoxDecoration(
                    border: Border.all(
                                      width: 1.0,
                                      color: Colors.grey[900]!,
                                    ),
                  
                ),
              ),
              const SizedBox(height: 10,),


              SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
       children: const [
      Text('Free parking'),
      SizedBox(width: 12),
      Text('Pets allowed'),
      SizedBox(width: 12),
      Text('Restaurant'),
      SizedBox(width: 12),
      Text('Free parking'),
      SizedBox(width: 12),
      Text('Pets allowed'),
      SizedBox(width: 12),
      Text('Restaurant'),
    ],
  ),
),
const SizedBox(height: 30,),
SingleChildScrollView(

  child: Row(
  children: const [
   Expanded(
      child: ListTile(
        title: Text("Check-in" , style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
        subtitle: Text('Sun 6'),
      ),
    ),
    SizedBox(width: 30),
    Expanded(
      child: ListTile(
        title: Text("Check-out",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
        subtitle: Text('Sun 24'),
      ),
    ),
  ],

)

),
      const SizedBox(height: 15,),
/////////////////////////////////////////////////////////////
                      Row(
                        children: [
                          Container(
                    padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                   decoration: BoxDecoration(
                   border: Border.all(
                   width: 1,
                    color: Colors.grey.shade900,
                 ),
                     color: Colors.green,
                    ),
                 child: const Text(
                    "68% off",
              style: TextStyle(color: Colors.white),
                 ),
             ),


                          const SizedBox(width: 6,),
                          
                                 Container(
                    padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                   decoration: BoxDecoration(
                   border: Border.all(
                   width: 1,
                    color: Colors.grey.shade900,
                 ),
                     color: Colors.purple,
                    ),
                 child: const Text(
                    "Geninus discount",
              style: TextStyle(color: Colors.white),
                 ),
             ),
                            const SizedBox(width: 6,),
                                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                   decoration: BoxDecoration(
                   border: Border.all(
                   width: 1,
                    color: Colors.grey.shade900,
                 ),
                     color: Colors.green,
                    ),
                 child: const Text(
                    "Mobile-only price",
              style: TextStyle(color: Colors.white),
                 ),
             ),
                        ],
                      ),
                      const SizedBox(height: 6,),
                      GestureDetector(
                        onTap: (){},
                        child:Column(
                          children:<Widget> [
                            Text('price'),
                            Text('ETB 32,43,490',style: TextStyle(fontSize: 30,fontWeight:FontWeight.bold),),
                            Text('include Taxi ande charge')

                          ],
                        
                        ) ,

                      ),
                      const SizedBox(height: 20,),
                      ////////////////
                      Text("Property surroundings", style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                      const SizedBox(height: 8,),
                      Container(
                        height: 150,
                        width: double.infinity,
                        color: Colors.amber[100],
                        child: Center(
                          child: Text('we feach map'),
                        ),
                      ),
                      const SizedBox(height: 20,),

                      Row(
          children: List.generate(titles.length, (index) {
            final isSelected = selectedIndex == index;
            return GestureDetector(
              onTap: () {
                setState(() => selectedIndex = index);
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Text(
                  titles[index],
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight:
                        isSelected ? FontWeight.bold : FontWeight.normal,
                    color: isSelected ? Colors.blue : Colors.black,
                  ),
                ),
              ),
            );

          }
          )),
          const SizedBox(height: 12),
          Text(
          descriptions[selectedIndex],
          style: const TextStyle(fontSize: 14),
        ),

            
            ],
          ),
        ),
      

    
      
      
      ),
    );
  }
}