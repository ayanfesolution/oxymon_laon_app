import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:oxymon_laon_app/utilities/constants.dart';
import 'package:oxymon_laon_app/views/welcomepage.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({Key key}) : super(key: key);

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 3),
            ()=> Navigator.pushReplacement(
            context, MaterialPageRoute(
          builder: (context) => const WelcomePage(),)) );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(flex: 4,
              child: Center(
                child: SizedBox(
                  width: 250,
                  height: 300,
                  child: Column(
                    children: [
                      Image.asset('assets/images/logobig.jpeg'),
                      const Text('Oxymon Loan', style: oBrandNameTextStyle,),
                    ],
                  )),
          )),

          Expanded(
            flex: 2,
              child: Column(
                children: const [
                  Text('Your sure partner at any time of need!',
                    style: oMainTextBigBoldTextStyle,),
                  SizedBox(height: 75,),
                  SpinKitChasingDots(color: AppColors.primaryColor)
                ],
              ))
        ],
      ),
    );
  }
}
