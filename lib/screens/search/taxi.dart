import 'package:booking/GeniusLoyalityProgram/choose_taxi_page.dart';
import 'package:booking/GeniusLoyalityProgram/genius_loyality_program_page.dart';
import 'package:booking/screens/search/Attractions.dart';
import 'package:booking/theam/app_color.dart';
import 'package:booking/utils/location_popup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Taxi extends StatefulWidget {
  const Taxi({super.key});

  @override
  State<Taxi> createState() => _TaxiState();
}

class _TaxiState extends State<Taxi> {
  final TextEditingController _pickupDateController = TextEditingController();
  final TextEditingController _returnDateController = TextEditingController();

  int selectedOption = 1;
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
            border: Border.all(
              color: Colors.black,
              style: BorderStyle.solid,
              width: 3,
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Radio<int>(
                    value: 1,
                    groupValue: selectedOption,
                    onChanged: (value) {
                      setState(() {
                        selectedOption = value!;
                      });
                    },
                  ),
                  Text('One way'),
                  SizedBox(width: 10),
                  Radio<int>(
                    value: 2,
                    groupValue: selectedOption,
                    onChanged: (value) {
                      setState(() {
                        selectedOption = value!;
                      });
                    },
                  ),
                  Text('Round trip'),
                ],
              ),
              Divider(),
              Row(
                children: [
                  Icon(Icons.location_on),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 5.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: ' Enter Pickup location',
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
              Row(
                children: [
                  Icon(Icons.location_on),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,

                          hintText: 'Enter Destination',
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
                      padding: EdgeInsets.only(left: 5.0),
                      child: TextField(
                        controller: _pickupDateController,
                        readOnly: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Pickup Date',
                        ),
                        onTap: () async {
                          final DateTime? picked = await showDatePicker(
                            context: context,
                            firstDate: DateTime.now(),
                            lastDate: DateTime(DateTime.now().year + 2),
                          );
                          if (picked != null) {
                            _pickupDateController.text =
                                '${picked.day}/${picked.month}/${picked.year}';
                          }
                        },
                      ),
                    ),
                  ),
                ],
              ),
              if (selectedOption == 2) roundTrip(),

              const Divider(),
              const Row(
                children: [
                  Icon(Icons.person_2_outlined),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: '2 passengers',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: Material(
                  child: TextButton(
                    onPressed: () {
                      Get.to(ChooseTaxiPage());
                    },
                    child: Text(
                      'Check Price',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: TextButton.styleFrom(
                      backgroundColor: AppColors.secondary,
                      foregroundColor: Colors.white,
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
      ],
    );
  }

  Widget roundTrip() {
    return Column(
      children: [
        if (selectedOption == 1) build(context),
        Row(
          children: [
            Icon(Icons.calendar_month_outlined),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 5.0),
                child: TextField(
                  controller: _returnDateController,
                  readOnly: true,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Return Date',
                  ),
                  onTap: () async {
                    final DateTime? due = await showDatePicker(
                      context: context,
                      firstDate: DateTime.now(),
                      lastDate: DateTime(DateTime.now().year + 2),
                    );
                    if (due != null) {
                      _returnDateController.text =
                          '${due.day}/${due.month}/${due.year}';
                    }
                  },
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
