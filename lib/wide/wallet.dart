import 'package:final_project/wide/top.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import 'action_button.dart';
import 'constant.dart';
import 'crypto.dart';
import 'crypto_card.dart';
import 'home_appbar.dart';
import 'info_card.dart';


class WalletScreen extends StatefulWidget {
  const WalletScreen({super.key});

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kscaffoldBackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HomeAppBar(),
                const SizedBox(height: 10),
                const InfoCard(),
                const SizedBox(height: 20),
                SizedBox(
                  height: 100,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ActionButton(
                        title: "Top Up",
                        icon: Ionicons.arrow_up_outline,
                        onpress: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const TopPage()),
                          );
                        },
                      ),
                      ActionButton(
                        title: "Convert",
                        icon: Ionicons.swap_horizontal_outline,
                        onpress: () {},
                      ),
                      ActionButton(
                        title: "Pay",
                        icon: Ionicons.arrow_down_outline,
                        onpress: () {},
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                const Center(
                  child: Text(
                    "My assets",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  height: cryptoList.length * 70 + 40,
                  child: ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return CryptoCard(
                        crypto: cryptoList[index],
                      );
                    },
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 10),
                    itemCount: cryptoList.length,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
