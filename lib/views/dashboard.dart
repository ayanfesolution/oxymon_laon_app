import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:oxymon_laon_app/utilities/constants.dart';
import 'package:oxymon_laon_app/views/mainpagebottombar.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  bool isHidden = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: Text('   Home', style: oMainTextLargeBoldTextStyle,),
        leadingWidth: 150,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.person, color: AppColors.secondaryColor),),
          SizedBox(width: 20,)
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 16, right: 16),
            child: Container(
              color: Color(0xFFE4EAF5),
              width: double.maxFinite,
              height: 110,
              child: Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, top: 24, bottom: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Loan Balance'),
                        Text(isHidden == false? '#25,000': '*******',
                          style: TextStyle(
                              fontSize: 34,
                              fontWeight: FontWeight.w600),),
                      ],
                    ),
                    IconButton(
                        onPressed: (){
                            setState((){
                                if (isHidden) {
                                  isHidden = false;
                                } else {
                                  isHidden = true;
                                }
                            });
                        },
                        icon: Icon((isHidden == false? Icons.remove_red_eye:CupertinoIcons.eye_slash_fill), size: 30,)
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 16, right: 16, bottom: 20),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.secondaryColor),
              width: double.maxFinite,
              height: 150,
              child: Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, top: 20, bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Icon(Icons.wallet, size: 35, color: Colors.white),
                    Expanded(child: Padding(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: Text('Earn up to 5% discount in reward when you repay your loan on time and oppurtunity to secure higher loan',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    )),
                    Icon(Icons.arrow_forward_ios_sharp, color: Colors.white,)
                  ],
                ),
              ),
            ),
          ),
          ElevatedButton.icon(
              onPressed: (){},
              style: ElevatedButton.styleFrom(primary: AppColors.secondaryColor),
              icon: Icon(Icons.star),
              label: Text('Earn Reward')
          ),
          SizedBox(height: 100),

          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const MainPageBottomBar()));
            },
            child: Container(
              width: 175,
              height: 150,
              decoration: BoxDecoration(border: Border.all(width: 0.5, color: AppColors.secondaryColor)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Need Money?', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22),),
                  Icon(Icons.money, color: AppColors.secondaryColor, size: 45,),
                  Container(
                    color: AppColors.secondaryColor.withAlpha(30),
                    height: 50,
                    child: Center(child: Text('Apply Now', style: oMainTextLargeBoldTextStyle,)),)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
