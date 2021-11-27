import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'weather_albom.dart';
import 'package:animated_horizontal_calendar/animated_horizontal_calendar.dart';
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
                          child: AnimatedHorizontalCalendar(
                              tableCalenderIcon: Icon(
                                Icons.calendar_today,
                                color: Colors.white,
                              ),
                              date: DateTime.now(),
                              textColor: Colors.black45,
                              backgroundColor: Colors.white,
                              tableCalenderThemeData:
                                  ThemeData.light().copyWith(
                                primaryColor: Colors.black,
                                accentColor: Colors.blueAccent,
                                colorScheme:
                                    ColorScheme.light(primary: Colors.grey),
                                buttonTheme: ButtonThemeData(
                                    textTheme: ButtonTextTheme.primary,),
                              ),
                              selectedColor: Colors.blueAccent,
                              onDateSelected: (date) {
                                selectedDate = date;
                              }),
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
                        height: 150,
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
                        height: 150,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            border: Border(
                              top:
                              BorderSide(color: Colors.black12, width: 2),
                              bottom:
                              BorderSide(color: Colors.black12, width: 2),
                            )),
                         /*marees*/),
                      Container(
                        width: double.infinity,
                        height: 150,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            border: Border(
                              top:
                              BorderSide(color: Colors.black12, width: 2),
                              bottom:
                              BorderSide(color: Colors.black12, width: 2),
                            )),
                         /*marees*/),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                child: Row(
                  children: [
                    //button  menu
                    Expanded(
                        child: Container(decoration: BoxDecoration(border: Border.all(color: Colors.black12,width: 2)),
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
                                "",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12.5,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          )
                      ],
                    ),
                        )),
                    Expanded(
                        child: Container(decoration: BoxDecoration(border: Border.all(color: Colors.black12,width: 2)),
                          child: Row(
                      children: [
                          Expanded(
                            flex: 1,
                            child: IconButton(
                                padding: EdgeInsets.all(2),
                                alignment: Alignment.topCenter,
                                color: Colors.black,
                                icon: Icon(Icons.add),
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
                                "",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12.5,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          )
                      ],
                    ),
                        )),
                    Expanded(
                        child: Container(decoration: BoxDecoration(border: Border.all(color: Colors.black12,width: 2)),
                          child: Row(
                      children: [
                          Expanded(
                            flex: 1,
                            child: IconButton(
                                padding: EdgeInsets.all(2),
                                alignment: Alignment.topCenter,
                                color: Colors.black,
                                icon: Icon(Icons.add),
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
                                "",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12.5,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          )
                      ],
                    ),
                        )),
                    Expanded(
                        child: Container(decoration: BoxDecoration(border: Border.all(color: Colors.black12,width: 2)),
                          child: Row(
                      children: [
                          Expanded(
                            flex: 1,
                            child: IconButton(
                                padding: EdgeInsets.all(2),
                                alignment: Alignment.topCenter,
                                color: Colors.black,
                                icon: Icon(Icons.add),
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
                                "",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12.5,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          )
                      ],
                    ),
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
