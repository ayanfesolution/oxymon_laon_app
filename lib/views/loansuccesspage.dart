import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:oxymon_laon_app/utilities/constants.dart';
import 'package:oxymon_laon_app/utilities/reusablecustombuttons.dart';
import 'package:oxymon_laon_app/views/mainpagebottombar.dart';

class LoanSuccessPage extends StatelessWidget {
  String fullName;
  String loanAmount;
  String lenderBankName;
  String lenderAccountNumber;
  String loanTenurePeriod;
  LoanSuccessPage({Key key, this.lenderBankName, this.lenderAccountNumber, this.loanAmount, this.loanTenurePeriod, this.fullName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondaryColor,
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 60,),
            SizedBox(
                width: 160,
                height: 160,
                child: Image.asset('assets/images/Success.png')),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('That was too easy!', style: oMainTextBigBoldWhiteTextStyle,),
            ),
            const Text('Congrats! Loan disbursed', style: oMainTextLargeBoldWhiteTextStyle,),
            const Padding(
              padding: EdgeInsets.only(left: 12, right: 12, top: 18, bottom: 35),
              child: Text('Kindly allow 1-3 hrs to reflect in your bank account', textAlign: TextAlign.center ,style: oMainTextBigBoldWhiteTextStyle,),
            ),
            Container(
              decoration: const BoxDecoration(color: Colors.white),
              width: 320,
              height: 270,
              child: Column(
                children: [
                  const SizedBox(height: 8),
                  const Text('Transaction Summary', style: oMainTextBigBoldTextStyle,),
                  const Padding(
                    padding: EdgeInsets.all(14.0),
                    child: DottedLine(),
                  ),
                  DetailsRow(name: 'Full Name', value: fullName),
                  DetailsRow(name: 'Loan Amount', value: loanAmount),
                  DetailsRow(name: 'Bank Name', value: lenderBankName),
                  DetailsRow(name: 'Account Number', value: lenderAccountNumber),
                  DetailsRow(name: 'Loan Period', value: loanTenurePeriod),
                ],
              ),
            ),
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: OCustomPassingButton(
                  title: 'Return to Dashboard',
                  onPressed: () {
                    Navigator.pushReplacement(
                        context, MaterialPageRoute(
                        builder: (context) => const MainPageBottomBar()));
                  },
                  size: const Size(double.maxFinite, 55)),
            )
          ],
        ),
      ),
    );
  }
}

class DetailsRow extends StatelessWidget {
  String name;
  String value;
  DetailsRow({
    Key key,  this.name,  this.value
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(name),
          Text(value, style: oMainTextBigBoldTextStyle,)
        ],),
    );
  }
}
