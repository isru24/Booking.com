import 'package:booking/theam/app_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RewardWalletPage extends StatelessWidget {
  const RewardWalletPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
         leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Get.back(),
        ),
        backgroundColor: AppColors.primary,
        title: Text(
          'Reward & Wallet',
          style: TextStyle(color: AppColors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  color: AppColors.primary,
                  width: double.infinity,
                  height: 80,
                ),
                Column(
                  children: [
                    _buildGeniusRewardCard(),
                    SizedBox(
                      height: 15,
                    )
                  ],
                )
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Row(
                    children: [
                      Text("Got a coupon code? "),
                      TextButton(
                          onPressed: () {},
                          child: Text("Add coupon into Wallet")),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      Text(
                        "What's Rewards & Wallet?",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                _texts(
                    Icons.confirmation_num,
                    "Book and earn travel rewards",
                    "Credits,vouchers,you name it! These are all",
                    " spendable on your next Booking.com trip."),
                SizedBox(
                  height: 20,
                ),
                _texts(
                    Icons.phone_android_outlined,
                    "Track everthing at a glance",
                    "Your Wallet keeps all rewards safe,while",
                    "updating you about your earing and spendings."),
                SizedBox(
                  height: 20,
                ),
                _texts(
                    Icons.connect_without_contact_outlined,
                    "Pay with Wallet to save money",
                    "If a booking accepts any rewards in your Wallet,",
                    "it'll apear during payment for spendings."),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 15.0, bottom: 60, right: 15),
                  child: SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(2),
                        ),
                        side: const BorderSide(color: AppColors.blue),
                        padding:
                            const EdgeInsets.symmetric(vertical: 14), // height
                      ),
                      child: const Text(
                        "Need help? Visit FAQs",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: AppColors.secondary),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

Widget _texts(
    IconData paraIcon, String label, String secondLabel, String thirdLabel) {
  return Padding(
    padding: const EdgeInsets.only(left: 15.0),
    child: Row(
      children: [
        Icon(
          paraIcon,
          size: 50,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                label,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(secondLabel),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(thirdLabel),
            )
          ],
        ),
      ],
    ),
  );
}

Widget _buildGeniusRewardCard() {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 16),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(12),
      boxShadow: [
        BoxShadow(
            color: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.3),
            blurRadius: 10)
      ],
    ),
    child: Column(
      children: [
        ListTile(
            contentPadding: const EdgeInsets.all(16),
            leading: Icon(
              Icons.account_balance_wallet_outlined,
              color: AppColors.blue,
              size: 50,
            ),
            title: const Text("Wallet balance",
                style: TextStyle(fontWeight: FontWeight.bold)),
            subtitle: const Text("Include all spendable rewards"),
            trailing: Text("ETB 0  ",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20))),
        const Divider(height: 1),
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: Row(
            children: [
              Text("Credits",
                  style: TextStyle(
                    fontSize: 15,
                  )),
              SizedBox(
                width: 350,
              ),
              // Icon(Icons.details_sharp),
              Text("ETB 0")
              // ListTile(
              //   trailing: Text("ETB 0"),
              // )
            ],
          ),
        ),
        const Divider(
          height: 1,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 16, bottom: 16, left: 6),
          child: Row(
            children: [
              TextButton(
                onPressed: () {},
                child: const Text(
                  "Browse Rewards and Wallet activity",
                  style: TextStyle(color: AppColors.secondary),
                ),
              )
            ],
          ),
        )
      ],
    ),
  );
}
