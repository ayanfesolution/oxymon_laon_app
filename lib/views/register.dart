import 'package:flutter/material.dart';
import 'package:oxymon_laon_app/utilities/constants.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
        ],
      ),
    );
  }
}
