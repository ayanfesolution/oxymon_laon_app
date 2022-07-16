import 'package:flutter/material.dart';
import 'package:flutter_session_manager/flutter_session_manager.dart';
import 'package:oxymon_laon_app/utilities/constants.dart';
import 'package:oxymon_laon_app/utilities/reusablecustombuttons.dart';
import 'package:oxymon_laon_app/views/successpage.dart';

class LoanPage extends StatefulWidget {
  const LoanPage({Key? key}) : super(key: key);

  @override
  State<LoanPage> createState() => _LoanPageState();
}

class _LoanPageState extends State<LoanPage> {
  var sessionManager = SessionManager();
  TextEditingController loanAmount = TextEditingController();
  TextEditingController loanTenurePeriod = TextEditingController();
  TextEditingController lenderAccountNumber = TextEditingController();
  TextEditingController lenderBankName = TextEditingController();
  TextEditingController lenderFullName = TextEditingController();
  TextEditingController lenderPhoneNumber = TextEditingController();
  TextEditingController lenderHomeAddress = TextEditingController();
  var items = ['1 months', '2 months', '3 months', '4 months', '5 months', '6 months', '7 months', '8 months', '9 months', '10 months', '11 months', '12 months'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text('Loan Request Form', style: oMainTextBigBoldTextStyle)
      ),
      body: SingleChildScrollView(

        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 60),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Your credit limit: ', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),),
                  Text('₦100,000', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),),
                  Icon(Icons.flag_circle, color: AppColors.primaryColor,)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25, top: 40),
              child: TextField(
                controller: loanAmount,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      borderSide: BorderSide(),
                    ),
                    labelText: 'Enter Loan Amount',
                  prefix: Container(
                    width: 30,
                    height: 15,
                    child: Text('#', style: const TextStyle(
                        color: AppColors.mainTextColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w800
                      ),
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
                  Text('Quick Add:'),
                  TextButton(onPressed: (){
                      setState((){
                         loanAmount.text = '5000';
                      });
                    },
                      child: Text('#5000')
                  ),
                  TextButton(onPressed: (){
                    setState((){
                      loanAmount.text = '10000';
                    });
                  },
                      child: Text('#10000')
                  ),
                  TextButton(onPressed: (){
                    setState((){
                      loanAmount.text = '15000';
                    });
                  },
                      child: Text('#15000')
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25, top: 40, bottom: 8),
              child: TextField(
                controller: loanTenurePeriod,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
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
                            child: new Text(value), value: value);
                      }).toList();
                    },
                  ),
                  hintText: 'Select Loan Tenure',
                  labelText: 'Loan Tenure/Term' 
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25, top: 40, bottom: 8),
              child: TextField(
                controller: lenderAccountNumber,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      borderSide: BorderSide(),
                    ),
                    hintText: 'Bank Account Number',
                    labelText: 'Bank Account Number'
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25, top: 40, bottom: 8),
              child: TextField(
                controller: lenderBankName,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      borderSide: BorderSide(),
                    ),
                    hintText: 'Bank name',
                    labelText: 'Bank name'
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25, top: 40, bottom: 8),
              child: TextField(
                controller: lenderFullName,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      borderSide: BorderSide(),
                    ),
                    hintText: 'Full Name',
                    labelText: 'Full Name'
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25, top: 40, bottom: 8),
              child: TextField(
                controller: lenderHomeAddress,
                maxLines: 4,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      borderSide: BorderSide(),
                    ),
                    hintText: 'Home address',
                    labelText: 'Home address'
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25, top: 40, bottom: 20),
              child: TextField(
                controller: lenderPhoneNumber,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      borderSide: BorderSide(),
                    ),
                    hintText: 'Telephone number',
                    labelText: 'Telephone number'
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: OCustomPassingButton(
                title: 'Apply for loan',
                onPressed: () {
                      sessionManager.set('loanAmount', loanAmount.text);
                      sessionManager.set('lenderFullName', lenderFullName.text);
                      sessionManager.set('lenderBankName', lenderBankName.text);
                      sessionManager.set('lenderAccountNumber', lenderAccountNumber.text);
                      sessionManager.set('lenderHomeAddress', lenderHomeAddress.text);
                      sessionManager.set('loanTenurePeriod', loanTenurePeriod.text);
                      sessionManager.set('lenderPhoneNumber', lenderPhoneNumber.text);
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SuccessPage()));
                },
                size: Size(double.maxFinite,  50),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
