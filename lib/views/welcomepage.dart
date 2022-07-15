import 'package:flutter/material.dart';
import 'package:oxymon_laon_app/utilities/constants.dart';
import 'package:oxymon_laon_app/utilities/reusablecustombuttons.dart';
import 'package:oxymon_laon_app/views/register.dart';
import 'package:oxymon_laon_app/views/signin.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset('assets/images/oxymonimage.jpeg'),

          Expanded(
              flex: 3,
              child: Column(
                  children: const [
                      Padding(
                        padding: EdgeInsets.all(10.0),
                            child: Text('Welcome \n to',
                                textAlign: TextAlign.center,
                              style: oMainTextLargeBoldTextStyle,),
                          ),
                    Text('Oxymon Loan', style: oBrandNameTextStyle,),
            ],
          )),
          const Expanded(
            flex: 3,
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Text('Going cashless has never been this easier with the world’s most leading expense manager.',
                textAlign: TextAlign.center,
                style: TextStyle(color: AppColors.mainTextColor, fontSize: 30),),
            ),
          ),

          Expanded(
            flex: 2,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: OCustomPassingButton(
                      size: Size(double.maxFinite, 55),
                      onPressed: (){
                        Navigator.push(context,
                          MaterialPageRoute(
                              builder: (context) => const RegisterPage()),);
                      },
                      title: 'Register'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: OCustomPassingButton(
                      size: Size(double.maxFinite, 55),
                      onPressed: (){
                        Navigator.push(context,
                          MaterialPageRoute(
                              builder: (context) => const SignInPage()),);
                      },
                      title: 'Sign In'),
                ),
              ],
            ),
          ),


        ],
      ),
    );
  }
}
