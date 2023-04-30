import 'dart:async';
import 'package:flutter/material.dart';
import 'package:arcitect_novelsmith/views/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
            () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => const HomeScreen()))
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Theme.of(context).scaffoldBackgroundColor,
                Theme.of(context).primaryColorLight,
                Theme.of(context).primaryColorDark,
              ],
            )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text('ARCitect',
              style: TextStyle(
                fontFamily: 'kodchasan',
                fontSize: 60.0,
              ),
            ),
            Text('by NovelSmith',
              style: TextStyle(
                fontFamily: 'kodchasan',
                fontSize: 30.0,
              ),
            ),
            Image(image: AssetImage('assets/images/arcitect_icon.png')),
            Text('Story Blueprint App',
              style: TextStyle(
                fontFamily: 'kodchasan',
                fontSize: 40.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
