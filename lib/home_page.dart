import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {

  String dropdownValue = 'One';

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Expanded(
              flex: 5,
              child:
              Container(
                child: Column(
                  children: [
                    Expanded(
                        flex: 3,
                        child:Container(
                            color: Colors.white,
                            child:
                            Row(/*Ham*/
                              children: [
                                Expanded(
                                    flex:4,
                                    child: Text("$dropdownValue"
                                    )),
                                Expanded(
                                    flex: 1,
                                    child: Container(
                                      child: DropdownButton<String>(
                                        icon: const Icon(Icons.album_outlined),
                                        iconSize: 24,
                                        elevation: 16,
                                        style: const TextStyle(color: Colors.black,),
                                        underline: Container(
                                          height: 0,
                                          color: Colors.deepPurpleAccent,
                                        ),
                                        onChanged: (String? newValue) {
                                          setState(() {
                                            dropdownValue = newValue!;
                                          });
                                        },
                                        items: <String>['One', 'Two', 'Free', 'Four']
                                            .map<DropdownMenuItem<String>>((String value) {
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
                        flex: 2,
                        child: SingleChildScrollView(scrollDirection: Axis.horizontal,
                          child: Row(/*Date*/
                            children: [
                              Container(
                                width: 70,
                                color: Colors.black,),
                              Container(
                                width: 70,
                                color: Colors.white,),
                              Container(
                                width: 70,
                                color: Colors.black,),
                              Container(
                                width: 70,
                                color: Colors.white,),
                              Container(
                                width: 70,
                                color: Colors.black,),
                              Container(
                                width: 70,
                                color: Colors.white,),
                              Container(
                                width: 70,
                                color: Colors.black,),
                              Container(
                                width: 70,
                                color: Colors.white,),
                              Container(
                                width: 70,
                                color: Colors.black,),
                              Container(
                                width: 70,
                                color: Colors.white,),
                              Container(
                                width: 70,
                                color: Colors.black,),
                              Container(
                                width: 70,
                                color: Colors.white,),
                              Container(
                                width: 70,
                                color: Colors.black,),
                              Container(
                                width: 70,
                                color: Colors.white,),
                              Container(
                                width: 70,
                                color: Colors.black,),
                              Container(
                                width: 70,
                                color: Colors.white,),
                            ],
                          ),
                        )
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 20,
              child:
              Container(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 180,
                        color: Colors.green,
                        child: Column(
                          children: [
                            Row(/*meteo*/),
                            Row(
                              children: [
                                /*icon*/
                                Column(
                                  children: [
                                    Row(/*Data*/),
                                    Row(/*Data*/),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 180,
                        color: Colors.white,
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
                        width: double.infinity,
                        height: 180,
                        color: Colors.green,/*marees*/),
                      Container(
                        width: double.infinity,
                        height: 180,
                        color: Colors.white,/*marees*/),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child:
              Container(
                color: Colors.blue,
                child: Row(
                  children: [//button  menu
                    Expanded(child: Column(
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
                      ],)
                    ),
                    Expanded(child: Row(
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
                      ],)
                    ),
                    Expanded(child: Row(
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
                      ],)
                    ),
                    Expanded(child: Row(
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
                      ],)
                    ),
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
