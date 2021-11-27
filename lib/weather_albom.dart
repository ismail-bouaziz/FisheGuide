

import 'dart:async';
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:weather_icons/weather_icons.dart';

Future<WeatherAlbum> fetchAlbum(String location) async {
  final response = await http
      .get(Uri.parse('http://api.weatherapi.com/v1/current.json?key=523be3f0e0eb46b2af6212602212611&q=$location&aqi=no'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return WeatherAlbum.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

class WeatherAlbum {
  final double tem ;
  final double temMin ;
  final int hum ;
  final double pressure;
  final String description;
  final String icon;
  final int code;


  WeatherAlbum({
    required this.tem,
    required this.temMin,
    required this.hum,
    required this.pressure,
    required this.description,
    required this.icon,
    required this.code
  });

  factory WeatherAlbum.fromJson(Map<String, dynamic> json) {
    return WeatherAlbum(
        tem: json['current']['temp_c'] as double,
        temMin: json['current']['feelslike_c'] as double,
        hum: json['current']['humidity'] as int,
        pressure: json['current']['pressure_mb'] as double,
        description: json['current']['condition']['text'] as String,
        icon: json['current']['condition']['icon'] as String,
        code: json['current']['condition']['code'] as int,
    );
  }
}


class Weather extends StatefulWidget {
  const Weather({Key? key}) : super(key: key);

  @override
  WeatherState createState() => WeatherState();
}

class WeatherState extends State<Weather> {
  late Future<WeatherAlbum> futureAlbum;

  @override
  void initState() {
    super.initState();
    String location = "Tunisia";
    futureAlbum = fetchAlbum(location);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: FutureBuilder<WeatherAlbum>(
            future: futureAlbum,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return  Center(
                  child:  Container(
                        alignment: Alignment.center,
                        width: double.infinity,
                        height: 150,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                const Expanded(
                                  child:
                                  Padding(
                                    padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 30.0),
                                    child: Text("Météo",
                                        style: TextStyle(
                                            fontSize: 20, fontWeight: FontWeight.bold)),
                                  ),
                                ),
                                Spacer(),
                                Expanded(
                                    child:
                                        Text(snapshot.data!.description,
                                            style:const
                                            TextStyle(fontSize: 14, color: Colors.black45)),

                                    )
                              ],
                            ),
                            Spacer(),Row(
                              children: [
                                Column(
                                  children: [
                                    Container(
                                        margin: const EdgeInsets.only(left: 40.0),
                                        child: Row(children: [
                                          Text("${snapshot.data!.tem}°C",
                                              style:const TextStyle(
                                                  fontSize: 24, fontWeight: FontWeight.bold)),
                                        ])
                                    ),
                                    Container(
                                      width: 360,
                                      height: 60,
                                      alignment: Alignment.bottomCenter,
                                      child: Row(
                                        children: [
                                          Spacer(),
                                          Image.network("http:${snapshot.data!.icon}"),
                                          Spacer(),
                                          Text("${snapshot.data!.temMin}.°C",
                                              style:const TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.bold)),
                                          Spacer(),
                                          const BoxedIcon(WeatherIcons.humidity,),
                                          Text("${snapshot.data!.hum}hpa",
                                              style: const TextStyle(
                                                  fontSize: 10, color: Colors.black)),
                                          Spacer(),
                                          const BoxedIcon(WeatherIcons.barometer,),
                                          Text(" ${snapshot.data!.pressure}",
                                              style: const TextStyle(
                                                  fontSize: 10, color: Colors.black))
                                        ],
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                  );
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }

              // By default, show a loading spinner.
              return const CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}