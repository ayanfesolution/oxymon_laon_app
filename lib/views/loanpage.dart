import 'package:flutter/material.dart';
import 'package:flutter_session_manager/flutter_session_manager.dart';
import 'package:oxymon_laon_app/utilities/constants.dart';
import 'package:oxymon_laon_app/utilities/reusablecustombuttons.dart';
import 'package:oxymon_laon_app/views/loansuccesspage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoanPage extends StatefulWidget {
  const LoanPage({Key key}) : super(key: key);

  @override
  State<LoanPage> createState() => _LoanPageState();
}

class _LoanPageState extends State<LoanPage> {
  var sessionManager = SessionManager();
  LoanSuccessPage nextPage = LoanSuccessPage();
  TextEditingController loanAmount = TextEditingController();
  TextEditingController loanTenurePeriod = TextEditingController();
  TextEditingController lenderAccountNumber = TextEditingController();
  TextEditingController lenderBankName = TextEditingController();
  TextEditingController lenderFullName = TextEditingController();
  TextEditingController lenderPhoneNumber = TextEditingController();
  TextEditingController lenderHomeAddress = TextEditingController();
  var items = [
    '1 months',
    '2 months',
    '3 months',
    '4 months',
    '5 months',
    '6 months',
    '7 months',
    '8 months',
    '9 months',
    '10 months',
    '11 months',
    '12 months'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          elevation: 0.0,
          title: const Text('Loan Request Form',
              style: oMainTextBigBoldTextStyle)),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 60),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Your credit limit: ',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                  Text(
                    '₦100,000',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
                  ),
                  Icon(
                    Icons.flag_circle,
                    color: AppColors.primaryColor,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25, top: 40),
              child: TextField(
                controller: loanAmount,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    borderSide: BorderSide(),
                  ),
                  labelText: 'Enter Loan Amount',
                  prefix: SizedBox(
                    width: 30,
                    height: 15,
                    child: Text(
                      '#',
                      style: TextStyle(
                          color: AppColors.mainTextColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w800),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text('Quick Add:'),
                  TextButton(
                      onPressed: () {
                        setState(() {
                          loanAmount.text = '5000';
                        });
                      },
                      child: const Text('#5000')),
                  TextButton(
                      onPressed: () {
                        setState(() {
                          loanAmount.text = '10000';
                        });
                      },
                      child: const Text('#10000')),
                  TextButton(
                      onPressed: () {
                        setState(() {
                          loanAmount.text = '15000';
                        });
                      },
                      child: const Text('#15000')),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 25, right: 25, top: 40, bottom: 8),
              child: TextField(
                controller: loanTenurePeriod,
                decoration: InputDecoration(
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      borderSide: BorderSide(),
                    ),
                    prefixIcon: PopupMenuButton<String>(
                      icon: const Icon(Icons.arrow_drop_down),
                      onSelected: (String value) {
                        loanTenurePeriod.text = value;
                      },
                      itemBuilder: (BuildContext context) {
                        return items.map<PopupMenuItem<String>>((String value) {
                          return PopupMenuItem(
                              value: value, child: Text(value));
                        }).toList();
                      },
                    ),
                    hintText: 'Select Loan Tenure',
                    labelText: 'Loan Tenure/Term'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 25, right: 25, top: 40, bottom: 8),
              child: TextField(
                controller: lenderAccountNumber,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      borderSide: BorderSide(),
                    ),
                    hintText: 'Bank Account Number',
                    labelText: 'Bank Account Number'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 25, right: 25, top: 40, bottom: 8),
              child: TextField(
                controller: lenderBankName,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      borderSide: BorderSide(),
                    ),
                    hintText: 'Bank name',
                    labelText: 'Bank name'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 25, right: 25, top: 40, bottom: 8),
              child: TextField(
                controller: lenderFullName,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      borderSide: BorderSide(),
                    ),
                    hintText: 'Full Name',
                    labelText: 'Full Name'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 25, right: 25, top: 40, bottom: 8),
              child: TextField(
                controller: lenderHomeAddress,
                maxLines: 4,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      borderSide: BorderSide(),
                    ),
                    hintText: 'Home address',
                    labelText: 'Home address'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 25, right: 25, top: 40, bottom: 20),
              child: TextField(
                controller: lenderPhoneNumber,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      borderSide: BorderSide(),
                    ),
                    hintText: 'Telephone number',
                    labelText: 'Telephone number'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: OCustomPassingButton(
                title: 'Apply for loan',
                onPressed: () {
                  if (loanAmount.text.isNotEmpty &&
                      loanTenurePeriod.text.isNotEmpty &&
                      lenderHomeAddress.text.isNotEmpty &&
                      lenderAccountNumber.text.isNotEmpty &&
                      lenderBankName.text.isNotEmpty &&
                      lenderFullName.text.isNotEmpty &&
                      lenderPhoneNumber.text.isNotEmpty) {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                LoanSuccessPage(
                                  fullName: lenderFullName.text,
                                  lenderAccountNumber: lenderAccountNumber.text,
                                  lenderBankName: lenderBankName.text,
                                  loanAmount: loanAmount.text,
                                  loanTenurePeriod: loanTenurePeriod.text,
                                )));
                  } else {
                    _showMyDialog();
                  }
                },
                size: const Size(double.maxFinite, 50),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Oh so sorry!!', textAlign: TextAlign.center,),
          content: SingleChildScrollView(
            child: ListBody(
              children: const <Widget>[
                Text('Note', textAlign: TextAlign.center,),
                Text('All fields are required to be filled'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Return'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
