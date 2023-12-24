import 'package:dicoding/util/reuseable_widgets.dart';
import 'package:flutter/material.dart';

class FirstTab extends StatefulWidget {
  const FirstTab({super.key});

  @override
  State<FirstTab> createState() => _HomePageState();
}

class _HomePageState extends State<FirstTab> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade300,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'GALERI ADAN',
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
            SizedBox(
              height: 10,
            ),
            logoWidget("lib/assets/images/adan.jpg"),
            SizedBox(height: 10), // Adding some space between the text and the buttons
          ],
        ),
      )
    );
 }
}
