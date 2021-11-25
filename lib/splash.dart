import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import 'login_page.dart';
class Splash extends StatefulWidget {
  const Splash({ Key? key }) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
   late VideoPlayerController controller;
  @override
  void initState(){
    super.initState();
    controller = VideoPlayerController.asset("assets/a.mp4")..initialize().then((_){
      setState(() {});
    });
    controller.play();
    _navigateToLoginPage();
  }


  _navigateToLoginPage()async{
    await Future.delayed(Duration(milliseconds: 7000), (){});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          VideoPlayer(controller),
        ],
      )
    );
  }
}