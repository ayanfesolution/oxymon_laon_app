import 'dart:async';

import 'package:flutter/material.dart';
import 'package:oxymon_laon_app/views/welcomepage.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 5),
            ()=> Navigator.pushReplacement(
            context, MaterialPageRoute(
          builder: (context) => const WelcomePage(),)) );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(flex: 3,
              child: Center(
            child: Container(
                width: 250,
                height: 250,
                child: Image.asset('assets/images/logobig.jpeg')),
          )),
          Expanded(
            flex: 1,
              child: Text('Your sure partner at any time of need'))
        ],
      ),
    );
  }
}
