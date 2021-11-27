import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'OTP_controller.dart';

class PhoneAuth extends StatefulWidget {
  const PhoneAuth({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<PhoneAuth> {

  String dialCodeDigits = "+216";
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            SizedBox(height: 70,),

            Padding(
              padding: const EdgeInsets.only(left: 28.0, right: 28.0),
              child: Image.asset("assets/login.jpg"),
            ),

            Container(
              margin: EdgeInsets.only(top : 10),
              child: Center(
                child: Text(
                  "Phone OTP Authentification",
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                ),
              ),
            ),

            SizedBox(height: 50,),

            SizedBox(
              width: 400,
              height: 60,
              child: CountryCodePicker(
                onChanged: (country){
                  setState(() {
                    dialCodeDigits = country.dialCode!;
                  });
                },
                initialSelection: "TN",
                showCountryOnly: false,
                showOnlyCountryWhenClosed: false,
                favorite: ["+216","TN","+92","PAK"],
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 10,right: 10,left: 10),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Phone Number",
                    prefix: Padding(
                      padding: EdgeInsets.all(4),
                      child: Text(dialCodeDigits),
                    )
                ),
                maxLength: 12,
                keyboardType: TextInputType.number,
                controller: _controller,
              ),
            ),

            Container(
              margin: EdgeInsets.all(15),
              width: double.infinity,
              child: ElevatedButton(
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (c) => OTPControllerScreen(
                    phone : _controller.text,
                    codeDigits : dialCodeDigits,
                  )));
                },
                child: Text('Next',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
              ),
            )

          ],
        ),
      ),
    );
  }
}
