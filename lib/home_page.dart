import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'weather_albom.dart';
class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  String dropdownValue = '';
  var selectedDate;
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Expanded(
              flex: 7,
              child: Container(
                child: Column(
                  children: [
                    Expanded(
                        flex: 3,
                        child: Container(
                            color: Colors.white,
                            child: Row(
                              /*Ham*/
                              children: [
                                Expanded(
                                    flex: 4, child: Text("$dropdownValue")),
                                Expanded(
                                    flex: 1,
                                    child: Container(
                                      child: DropdownButton<String>(
                                        icon: const Icon(Icons.add_location),
                                        iconSize: 24,
                                        elevation: 16,
                                        style: const TextStyle(
                                          color: Colors.black,
                                        ),
                                        underline: Container(
                                          height: 0,
                                          color: Colors.deepPurpleAccent,
                                        ),
                                        onChanged: (String? newValue) {
                                          setState(() {
                                            dropdownValue = newValue!;
                                          });
                                        },
                                        items: <String>[
                                          'One',
                                          'Two',
                                          'Free',
                                          'Four'
                                        ].map<DropdownMenuItem<String>>(
                                            (String value) {
                                          return DropdownMenuItem<String>(
                                            value: value,
                                            child: Text(value),
                                          );
                                        }).toList(),
                                      ),
                                    ))
                              ],
                            ))),
                    Expanded(
                        flex: 4,
                        child: Container(
                          child: Weather(),
                        )),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 20,
              child: Container(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            border: Border(
                              top:
                              BorderSide(color: Colors.black12, width: 2),
                              bottom:
                              BorderSide(color: Colors.black12, width: 2),
                            )),
                        width: double.infinity,
                        height: 150,
                        child: Weather(),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            border: Border(
                              top:
                                BorderSide(color: Colors.black12, width: 2),
                              bottom:
                                  BorderSide(color: Colors.black12, width: 2),
                            )),
                        width: double.infinity,
                        height: 180,
                        child: Column(
                          children: [
                            Row(/*soliel*/),
                            Row(
                              children: [
                                /*icon*/
                                /*icon*/
                                Column(/*text*/)
                              ],
                            ),
                            Row(/*data*/),
                            Row(/*data*/),
                          ],
                        ),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            border: Border(
                              top:
                              BorderSide(color: Colors.black12, width: 2),
                              bottom:
                              BorderSide(color: Colors.black12, width: 2),
                            )),
                        width: double.infinity,
                        height: 180, /*marees*/),
                      Container(
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            border: Border(
                              top:
                              BorderSide(color: Colors.black12, width: 2),
                              bottom:
                              BorderSide(color: Colors.black12, width: 2),
                            )),
                        width: double.infinity,
                        height: 180, /*marees*/),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.blue,
                child: Row(
                  children: [
                    //button  menu
                    Expanded(
                        child: Column(
                      children: [
                        /* Expanded(
                            flex: 1,
                            child: IconButton(alignment: Alignment.center ,
                                icon: Icon(Icons.watch),
                                onPressed: () {
                                  print("Previsions");
                                }),
                          ),*/
                        Expanded(
                          flex: 1,
                          child: TextButton(
                            onPressed: () {
                              print("\u{2795} Previsions ");
                            },
                            child: Text(
                              "\u{2795} Previsions",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12.5,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        )
                      ],
                    )),
                    Expanded(
                        child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: IconButton(
                              padding: EdgeInsets.all(2),
                              alignment: Alignment.topCenter,
                              color: Colors.white,
                              icon: Icon(Icons.facebook),
                              onPressed: () {
                                print("Sign Up with Facebook");
                              }),
                        ),
                        Expanded(
                          flex: 5,
                          child: TextButton(
                            onPressed: () {
                              print("Sign Up with Facebook");
                            },
                            child: Text(
                              "Facebook",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12.5,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        )
                      ],
                    )),
                    Expanded(
                        child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: IconButton(
                              padding: EdgeInsets.all(2),
                              alignment: Alignment.topCenter,
                              color: Colors.white,
                              icon: Icon(Icons.facebook),
                              onPressed: () {
                                print("Sign Up with Facebook");
                              }),
                        ),
                        Expanded(
                          flex: 5,
                          child: TextButton(
                            onPressed: () {
                              print("Sign Up with Facebook");
                            },
                            child: Text(
                              "Facebook",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12.5,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        )
                      ],
                    )),
                    Expanded(
                        child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: IconButton(
                              padding: EdgeInsets.all(2),
                              alignment: Alignment.topCenter,
                              color: Colors.white,
                              icon: Icon(Icons.facebook),
                              onPressed: () {
                                print("Sign Up with Facebook");
                              }),
                        ),
                        Expanded(
                          flex: 5,
                          child: TextButton(
                            onPressed: () {
                              print("Sign Up with Facebook");
                            },
                            child: Text(
                              "Facebook",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12.5,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        )
                      ],
                    )),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
