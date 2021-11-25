import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
            color: Color(0xffe8e8e8),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 80,bottom: 120),

                  width: 200,height: 200,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/2.png"),
                          fit: BoxFit.cover,
                          alignment: Alignment.center)),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 140,
                  child: Column(children: [
                    Expanded(
                      flex: 5,
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        color: Colors.blue,
                        child: Container(
                          width: 160,
                          color: Colors.transparent,
                          child: Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: IconButton(
                                    iconSize: 40,
                                    padding: EdgeInsets.all(2),
                                    alignment: Alignment.center,
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
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Spacer(flex: 1),
                    Expanded(
                        flex: 5,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          color: Colors.green,
                          child: Container(
                            width: 160,
                            color: Colors.transparent,
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: IconButton(
                                      iconSize: 40,
                                      padding: EdgeInsets.all(2),
                                      alignment: Alignment.center,
                                      color: Colors.white,
                                      icon: Icon(Icons.phone),
                                      onPressed: () {
                                        print("Sign Up with Phone");
                                      }),
                                ),
                                Expanded(
                                  flex: 10,
                                  child: TextButton(
                                    onPressed: () {
                                      print("Sign Up with Phone");
                                    },
                                    child: Text(
                                      "Phone",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        )),
                    Spacer(flex: 1),
                    Expanded(
                        flex: 2,
                        child: Container(
                          child: InkWell(
                            onTap: (){print("Les condition");},
                            child: Text(
                              "Condition génerale d'utilisation",
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 12,
                                  decoration: TextDecoration.underline
                              ),
                            ),
                          ) ,

                        ))
                  ]),
                ),
              ],
            )),
      ),
    );
  }
}
