import 'package:flutter/material.dart';


class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(
              width: 88,
              child: AspectRatio(aspectRatio: 0.88,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  decoration: BoxDecoration(color: const Color(0xFFF5F6F9),
                  borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Image(image: AssetImage("assets/img16.jpg"),),
                ),
              ),),
            ),
            const SizedBox(width: 20,),
            const Column(
              children: [
               Text("Shirt", style: TextStyle(fontSize: 16, color: Colors.black),
               maxLines: 2,
               ),
               Text.rich(TextSpan(
                text: "30.00", style: TextStyle(fontWeight: FontWeight.bold)
               ))
              ],
            )
          ],
        ),
      ],
    );
  }
}
