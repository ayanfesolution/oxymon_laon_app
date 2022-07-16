import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:oxymon_laon_app/utilities/constants.dart';
import 'package:oxymon_laon_app/utilities/reusablecustombuttons.dart';
import 'package:oxymon_laon_app/views/mainpagebottombar.dart';

class SuccessPage extends StatefulWidget {
  const SuccessPage({Key? key}) : super(key: key);

  @override
  State<SuccessPage> createState() => _SuccessPageState();
}

class _SuccessPageState extends State<SuccessPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondaryColor,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 60,),
            SizedBox(
              width: 160,
                height: 160,
                child: Image.asset('assets/images/Success.png')),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('That was too easy!', style: oMainTextBigBoldWhiteTextStyle,),
            ),
            Text('Congrats! Loan disbursed', style: oMainTextLargeBoldWhiteTextStyle,),
            Padding(
              padding: const EdgeInsets.only(left: 12, right: 12, top: 18, bottom: 35),
              child: Text('Kindly allow 1-3 hrs to reflect in your bank account', textAlign: TextAlign.center ,style: oMainTextBigBoldWhiteTextStyle,),
            ),
            Container(
              decoration: BoxDecoration(color: Colors.white),
              width: 320,
              height: 270,
              child: Column(
                children: [
                  SizedBox(height: 8),
                  Text('Transaction Summary', style: oMainTextBigBoldTextStyle,),
                  Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: DottedLine(),
                  ),
                  DetailsRow(),
                  DetailsRow(),
                  DetailsRow(),
                  DetailsRow(),
                  DetailsRow(),
                ],
              ),
            ),
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: OCustomPassingButton(
                  title: 'Return to Dashboard',
                  onPressed: () {
                    Navigator.pushReplacement(
                        context, MaterialPageRoute(
                        builder: (context) => MainPageBottomBar()));
                  },
                  size: Size(double.maxFinite, 55)),
            )
          ],
        ),
      ),
    );
  }
}

class DetailsRow extends StatelessWidget {
  const DetailsRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Text('Loan Amount'),
        Text('#5000', style: oMainTextBigBoldTextStyle,)
      ],),
    );
  }
}
