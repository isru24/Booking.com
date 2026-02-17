import 'package:booking/GeniusLoyalityProgram/attraction_searched_page.dart';
import 'package:booking/GeniusLoyalityProgram/genius_loyality_program_page.dart';
import 'package:booking/controller/user_name_controller.dart';
import 'package:booking/theam/app_color.dart';
import 'package:booking/utils/location_popup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Attractions extends StatefulWidget {
  const Attractions({super.key});

  @override
  State<Attractions> createState() => _AttractionsState();
}

class _AttractionsState extends State<Attractions> {
  final TextEditingController _dateController = Get.put(
    TextEditingController(),
  );
  final userNameController = Get.find<UserNameController>();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.circular(24),
            border: Border.all(width: 3, color: Colors.black),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  const Icon(Icons.search),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 7.0),
                      child: TextField(
                        readOnly: true,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Where do you want to go',
                        ),
                        onTap: () {
                          showModalBottomSheet(
                            context: context,
                            isScrollControlled: true,
                            shape: const BeveledRectangleBorder(),
                            builder: (context) => const LocationPopup(),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
              const Divider(),
              Row(
                children: [
                  Icon(Icons.calendar_month_outlined),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: TextField(
                        readOnly: true,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Tell us when',
                        ),
                        onTap: () async {
                          final DateTimeRange? picked =
                              await showDateRangePicker(
                                context: context,
                                firstDate: DateTime.now(),
                                lastDate: DateTime(DateTime.now().year + 2),
                                initialDateRange: DateTimeRange(
                                  start: DateTime.now(),
                                  end: DateTime.now().add(Duration(days: 1)),
                                ),
                              );
                          if (picked != null) {
                            _dateController.text =
                                '${picked.start} - ${picked.end}'
                                '-${picked.end.day}/${picked.end.month}';
                          }
                        },
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: TextButton(
                    onPressed: () {
                      Get.to(AttractionSearchedPage());
                    },
                    child: Text(
                      'Search',
                      style: TextStyle(color: Colors.white),
                    ),
                    style: TextButton.styleFrom(
                      backgroundColor: AppColors.secondary,
                      shape: BeveledRectangleBorder(),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Text(
            "Travel more, spend less",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),

        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child:
                // Obx(() =>
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Get.to(GeniusLoyalityProgramPage());
                      },
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(28.0),
                          child: SizedBox(
                            width: 200,
                            child: Text(
                              'Genius\n'
                              // '${userNameController.emailName.value}'
                              'you are at Genius Level1 in our loyality program\n dtdt',
                              style: TextStyle(
                                color: AppColors.white,
                                fontSize: 17,
                              ),
                            ),
                          ),
                        ),

                        color: AppColors.secondary,
                      ),
                    ),
                    SizedBox(width: 10),
                    // Card(
                    // child:
                    InkWell(
                      onTap: () {
                        Get.to(GeniusLoyalityProgramPage());
                      },
                      child: Container(
                        width: 200,
                        height: 150,
                        // margin: EdgeInsets.all(12),
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: AppColors.background,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: AppColors.secondary,
                            width: 1,
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    '10% discount on stays\n',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: Icon(
                                    Icons.car_rental,
                                    color: AppColors.blue,
                                    size: 35,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              'Enjoy discount at participating properties worldwide',
                            ),
                          ],
                        ),
                      ),
                    ),

                    SizedBox(width: 10),
                    // Card(
                    // child:
                    InkWell(
                      onTap: () {
                        Get.to(GeniusLoyalityProgramPage());
                      },
                      child: Container(
                        width: 200,
                        height: 150,
                        // margin: EdgeInsets.all(12),
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: AppColors.background,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: AppColors.secondary,
                            width: 1,
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    '10% discount on rental cars\n',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: Icon(
                                    Icons.car_rental,
                                    color: AppColors.blue,
                                    size: 35,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              'Enjoy discount at participating properties worldwide',
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    // Card(
                    // child:
                    InkWell(
                      onTap: () {
                        Get.to(GeniusLoyalityProgramPage());
                      },
                      child: Container(
                        width: 200,
                        height: 150,
                        // margin: EdgeInsets.all(12),
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: AppColors.background,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: AppColors.secondary,
                            width: 1,
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    '10% discount on stays\n',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: Icon(
                                    Icons.car_rental,
                                    color: AppColors.blue,
                                    size: 35,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              'Enjoy discount at participating properties worldwide',
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    // Card(
                    // child:
                    InkWell(
                      onTap: () {
                        Get.to(GeniusLoyalityProgramPage());
                      },
                      child: Container(
                        width: 200,
                        height: 150,
                        // margin: EdgeInsets.all(12),
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: AppColors.background,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: AppColors.secondary,
                            width: 1,
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    '10% discount on stays\n',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: Icon(
                                    Icons.car_rental,
                                    color: AppColors.blue,
                                    size: 35,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              'Enjoy discount at participating properties worldwide',
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    // Card(
                    // child:
                    Container(
                      width: 200,
                      height: 150,
                      // margin: EdgeInsets.all(12),
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: AppColors.background,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: AppColors.secondary,
                          width: 1,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  '10% discount on stays\n',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15.0),
                                child: Icon(
                                  Icons.car_rental,
                                  color: AppColors.blue,
                                  size: 35,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            'Enjoy discount at participating properties worldwide',
                          ),
                        ],
                      ),
                    ),

                    // Card(child: Text('Genius\n XRESXSECCTTVYBIUU\n dtdt')),
                    // Card(child: Text('Genius\n XRESXSECCTTVYBIUU\n dtdt')),
                    // Card(child: Text('Genius\n XRESXSECCTTVYBIUU\n dtdt')),
                  ],
                ),
          ),
        ),
        // ),
      ],
    );
  }
}
