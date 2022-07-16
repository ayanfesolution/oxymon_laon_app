import 'package:flutter/material.dart';
import 'package:oxymon_laon_app/utilities/constants.dart';
import 'package:oxymon_laon_app/views/dashboard.dart';
import 'package:oxymon_laon_app/views/loanpage.dart';

class MainPageBottomBar extends StatefulWidget {
  const MainPageBottomBar({Key? key}) : super(key: key);

  @override
  State<MainPageBottomBar> createState() => _MainPageBottomBarState();
}

class _MainPageBottomBarState extends State<MainPageBottomBar> {
  static int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    List<Widget> screensToShow = [DashboardPage(), LoanPage()];
    return Scaffold(
      body: screensToShow[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(

        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppColors.primaryColor,
        unselectedItemColor: AppColors.mainTextColor,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState((){
            _currentIndex = index;
            print(_currentIndex);
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled, color: _currentIndex == 0
          ? AppColors.primaryColor
          : AppColors.mainTextColor,),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.money, color: _currentIndex == 1
                ? AppColors.primaryColor
                : AppColors.mainTextColor,),
            label: 'Loan',
          ),
        ],
      ),
    );
  }
}
