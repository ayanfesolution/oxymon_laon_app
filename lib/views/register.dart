import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:oxymon_laon_app/utilities/constants.dart';
import 'package:oxymon_laon_app/utilities/reusablecustombuttons.dart';
import 'package:oxymon_laon_app/views/signin.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
            child: const Text('Welcome!!! Create Your Account', style: oMainTextBigBoldTextStyle,),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    borderSide: BorderSide(),
                  ),
                  hintText: 'Email',
                  labelText: 'Email'
              ),
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
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
                    labelText: 'Password'
                ),
              ),
          ),
          Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
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
                    hintText: 'Confirm Password',
                    labelText: 'Confirm Password'
                ),
              ),
          ),
          Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      borderSide: BorderSide(),
                    ),
                    hintText: 'Firstname',
                    labelText: 'Firstname'
                ),
              ),
          ),
          Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      borderSide: BorderSide(),
                    ),
                    hintText: 'Lastname',
                    labelText: 'Lastname'
                ),
              ),
          ),
          Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      borderSide: BorderSide(),
                    ),
                    hintText: 'Phone Number',
                    labelText: 'Phone Number'
                ),
              ),
          ),
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.only(left: 26, right: 26),
            child: OCustomPassingButton(
                title: 'Login',
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => const SignInPage()));
                },
                size: const Size(double.maxFinite, 60)
            ),
          ),
        ],
      ),
    );
  }
}
