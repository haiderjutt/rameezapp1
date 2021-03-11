import './home.dart';

import 'package:flutter/material.dart';

class MyLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double screenw = MediaQuery.of(context).size.width;
    final double screenh = MediaQuery.of(context).size.height;

    return Scaffold(
        backgroundColor: Colors.grey[200],
        body: GestureDetector(
          onTap: () {
            FocusScope.of(context).requestFocus(new FocusNode());
          },
          child: Container(
              child: Padding(
            padding: EdgeInsets.fromLTRB(screenw * 0.1, 0, screenw * 0.1, 0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: screenh * 0.3),
                  Text('Username',
                      style: TextStyle(
                          fontFamily: 'Arial',
                          color: Colors.black,
                          fontSize: 22,
                          letterSpacing: 2,
                          decoration: TextDecoration.none)),
                  SizedBox(height: screenh * 0.025),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email',
                    ),
                  ),
                  SizedBox(height: screenh * 0.05),
                  Text('Password',
                      style: TextStyle(
                          fontFamily: 'Arial',
                          color: Colors.black,
                          fontSize: 22,
                          letterSpacing: 2,
                          decoration: TextDecoration.none)),
                  SizedBox(height: screenh * 0.015),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                  SizedBox(height: screenh * 0.05),
                  Padding(
                      padding: EdgeInsets.only(left: screenw * 0.2),
                      child: Container(
                        width: 150,
                        height: 50,
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MyHome()));
                            },
                            child:
                                Text('Login', style: TextStyle(fontSize: 22))),
                      ))
                ],
              ),
            ),
          )),
        ));
  }
}
