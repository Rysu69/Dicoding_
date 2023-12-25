import 'package:dicoding/screens/home_screen.dart';
import 'package:dicoding/screens/signin.dart';
import 'package:dicoding/util/reuseable_widgets.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SecondTab extends StatelessWidget {
  static var _username = "username";

  TextEditingController _usernameTextController = TextEditingController();

  SecondTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Color.fromARGB(255, 244, 232, 193),
        backgroundColor: Colors.blue.shade300,
        body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
         child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
                ),  
                Container(
                  child:      Icon(Icons.account_circle_outlined,color: Colors.white,size: 90,),
                      ),
                   SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
                ),  
              Container(
                margin: EdgeInsets.only(top: 10.0),
                child: Text(_username),
              ),  
              Container(
                  child: Column(children: <Widget>[
                SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
                ),  
                reusableTextField("Enter Username", Icons.person, false,
                    _usernameTextController),
                SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
                ),  
                ElevatedButton(
                  onPressed: () {
                    _username = _usernameTextController.text;
                  Navigator.push(
                 context,
                 MaterialPageRoute(builder: (context) => HomeScreen()),
                );
                },
                  child: Text(
                    "change",
                    style: const TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.resolveWith((states) {
                        if (states.contains(MaterialState.pressed)) {
                          return Colors.black26;
                        }
                        return Colors.white;
                      }),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)))),
                ),
                SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
                ),  
                ElevatedButton(
                          child: Text("Logout"),
                          onPressed: () {
                            {
                                 Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SignInScreen()));
  }})]))
            ])))); // ElevatedButton
  }
}
