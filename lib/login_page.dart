import 'package:fish/home_page.dart';
import 'package:fish/phone_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
class LoginPage extends StatefulWidget {
  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  Map? _userData;

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
                                    onPressed: () async {

                                      final result = await FacebookAuth.i.login(
                                          permissions: ["public_profile", "email"]
                                      );

                                      if (result.status == LoginStatus.success) {

                                        final userData = await FacebookAuth.i.getUserData(
                                          fields: "email,name",
                                        );

                                        setState(() {
                                          _userData = userData;
                                          _navigateToHome();
                                        });

                                      }

                                    }),
                              ),
                              Expanded(
                                flex: 5,
                                child: TextButton(
                                  onPressed: () async {

                                    final result = await FacebookAuth.i.login(
                                        permissions: ["public_profile", "email"]
                                    );

                                    if (result.status == LoginStatus.success) {

                                      final userData = await FacebookAuth.i.getUserData(
                                        fields: "email,name",
                                      );

                                      setState(() {
                                        _userData = userData;
                                        _navigateToHome();
                                      });

                                    }

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
                                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => PhoneAuth()));
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
  _navigateToHome()async{
    await Future.delayed(Duration(milliseconds: 7000), (){});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage()));
  }
}
