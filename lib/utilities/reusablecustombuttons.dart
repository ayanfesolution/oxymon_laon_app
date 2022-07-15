import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:oxymon_laon_app/utilities/constants.dart';

class OCustomPassingButton extends StatelessWidget {
  String title;
  GestureTapCallback onPressed;
  Size size;
  OCustomPassingButton({
    Key? key,
    required this.title,
    required this.onPressed,
    required this.size
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style:  ElevatedButton.styleFrom(
            primary: AppColors.primaryColor,
            fixedSize: size,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25)),
        ),
        child: Text(title)
    );
  }
}
