import 'package:flutter/material.dart';

class Delivery extends StatelessWidget {
  const Delivery({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(right: 50.0),
          child: Center(
            child: Column(children: [
              Text(
                "Your Delivery",
                style: TextStyle(color: Colors.black),
              ),
              
            ]),
          ),
        ),
      ),
      body:
              const SizedBox(
                height: double.infinity,
                child: Image(
                  image: AssetImage('assets/img22.png'),
                ),
              ),
               
              
    );
  }
}