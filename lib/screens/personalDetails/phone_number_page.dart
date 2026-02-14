import 'package:booking/controller/user_name_controller.dart';
import 'package:booking/theam/app_color.dart';
import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PhoneNumberPage extends StatefulWidget {
  const PhoneNumberPage({super.key});

  @override
  State<PhoneNumberPage> createState() => _PhoneNumberPageState();
}

class _PhoneNumberPageState extends State<PhoneNumberPage> {
  final userNameController = Get.find<UserNameController>();
  final phoneNumberController = TextEditingController();
  final phoneNumberInputController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back,
              color: AppColors.white,
            )),
        backgroundColor: AppColors.primary,
        title: Text(
          "Phone number",
          style: TextStyle(color: AppColors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Phone number *",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Obx(
              () => Row(
                children: [
                  SizedBox(
                    width: 90,
                    child: GestureDetector(
                      onTap: () {
                        showCountryPicker(
                          context: context,
                          showPhoneCode: false,
                          onSelect: (country) {
                            setState(() {
                              userNameController.phoneCode(country.phoneCode);
                              userNameController
                                  .countryFlage(country.flagEmoji);
                            });
                          },
                        );
                      },
                      child: AbsorbPointer(
                        child: TextFormField(
                          controller: phoneNumberController,
                          readOnly: true,
                          decoration: InputDecoration(
                            hintText:
                                userNameController.countryFlage.value.isEmpty
                                    ? " "
                                    : userNameController.countryFlage.value,
                            suffixIcon: const Icon(Icons.arrow_drop_down),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(4),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(4),
                              borderSide:
                                  BorderSide(color: AppColors.blue, width: 2),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: AppColors.secondary, width: 2),
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  SizedBox(
                    width: 350,
                    child: TextFormField(
                      controller: phoneNumberInputController,
                      decoration: InputDecoration(
                          prefixIcon: Container(
                            width: 70,
                            alignment: Alignment.center,
                            child: Text(
                              userNameController.phoneCode.value.isEmpty
                                  ? " "
                                  : "+${userNameController.phoneCode.value}",
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(4)),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4),
                            borderSide:
                                BorderSide(color: AppColors.blue, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: AppColors.secondary, width: 2),
                              borderRadius: BorderRadius.circular(4))),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            SizedBox(
              child: Row(
                children: [
                  Icon(Icons.integration_instructions),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Text(
                        "We'll save this number so you can usenitnduring the booking process."),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 300,
            ),
            SizedBox(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.secondary,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusGeometry.circular(4))),
                  onPressed: () {
                    userNameController
                        .setPhoneNumber(phoneNumberInputController.text);
                    Get.back();
                  },
                  child: Text(
                    "Save",
                    style: TextStyle(color: AppColors.white, fontSize: 25),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
