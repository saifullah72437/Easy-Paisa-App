import 'package:flutter/material.dart';

import '../utils/appColors.dart';

class PurchasedBtn extends StatelessWidget {

final Tap;
  bool purchased;
   PurchasedBtn({Key? key, required this.Tap, required this.purchased}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: Tap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        decoration: BoxDecoration(
            color: purchased? AppColors.greenColor: AppColors.purchasedBtn,
            borderRadius: BorderRadius.circular(15)
        ),
        child:const  Center(child: Text('Purchased', style: TextStyle(color:
        AppColors.whiteColor,),),),
      ),
    );
  }
}
