import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:oxymon_laon_app/utilities/constants.dart';
import 'package:oxymon_laon_app/utilities/reusablecustombuttons.dart';
import 'package:oxymon_laon_app/views/dashboard.dart';
import 'package:oxymon_laon_app/views/register.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool isHidden = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          }, 
          icon: Icon(Icons.arrow_back_rounded, color: AppColors.primaryColor,),)

      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Center(
            child: SizedBox(
                width: 250,
                height: 100,
                child: Image.asset('assets/images/mainlogo.jpeg')),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: const Text('We’ve missed you! Sign in to continue', style: oMainTextBigBoldTextStyle,),
          ),
          const Padding(
            padding: EdgeInsets.all(26.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(

                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  borderSide: BorderSide(),
                ),
                hintText: 'Email or Phone Number',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 26, right: 26, top: 26),
            child: TextField(
              obscureText: isHidden,
              decoration: InputDecoration(
                suffix: GestureDetector(
                   onTap: () async {
                     setState((){
                       if (isHidden) {
                         isHidden = false;
                       } else {
                         isHidden = true;
                       }
                     });
                   },
                    child: Icon((isHidden == false? Icons.remove_red_eye:CupertinoIcons.eye_slash_fill), size: 20,)),
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  borderSide: BorderSide(),
                ),
                hintText: 'Password',
              ),
            ),
          ),
          Align(alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 26),
                child: TextButton(onPressed: (){}, child: const Text('Forget Password?')),
              )
          ),
          const SizedBox(height: 20),
          IconButton(onPressed: (){},
              icon: Image.asset('assets/images/FaceID.png',
                color: AppColors.primaryColor,
                height: 75,
                width: 75,
              ),
          ),
          const SizedBox(height: 100),
          Padding(
            padding: const EdgeInsets.only(left: 26, right: 26),
            child: OCustomPassingButton(
                title: 'Login',
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => const DashboardPage()));
                },
                size: const Size(double.maxFinite, 60)
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 26, right: 26),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text('New User?'),
                TextButton(onPressed: (){
                  Navigator.push(
                      context, MaterialPageRoute(
                      builder: (context)=> const RegisterPage(),));
                }, child: const Text('Sign Up'))
              ],
            ),
          ),
    ],
      ),
    );
  }
}
