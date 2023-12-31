import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import 'constant.dart';


class InfoCard extends StatelessWidget {
  const InfoCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 150,
      decoration: BoxDecoration(
        color: kprimaryColor,
        borderRadius: BorderRadius.circular(15),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 25,
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Total estimated value",
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
            ),
          ),
          Spacer(),
          Row(
            children: [
              Text(
                "30,4213.43",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 10),
              Text(
                "USDT",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              Icon(
                Ionicons.trending_up_outline,
                color: Colors.black,
              )
            ],
          )
        ],
      ),
    );
  }
}