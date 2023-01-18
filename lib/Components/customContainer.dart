import 'package:flutter/material.dart';
import 'package:easy_paisa_coin_app/exports/exportingFile.dart';
class CustomContainer extends StatelessWidget {
  final child;

  const CustomContainer({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 100,
      width: 100,
      decoration:  BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(15),
        boxShadow:  [
          BoxShadow(
            offset:  Offset(5, 5),
            color: Colors.grey.shade300,
            blurRadius: 10,
            spreadRadius: -1,

          ),
          BoxShadow(
            offset:  Offset(-5, -5),
            color: Colors.grey.shade300,
            blurRadius: 10,
            spreadRadius: -1,

          ),

        ],

      ),
      child: Center(child: child),
    );
  }
}
