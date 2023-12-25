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
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
         child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 30),
            Text(
              'GALERI ADAN',
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
            SizedBox(
              height: 10,
            ),
            logoWidget("lib/assets/images/adan.jpg"),
            SizedBox(height: 10), 
          ],
        ),
      )
    ));
 }
}
