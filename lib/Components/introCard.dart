

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:easy_paisa_coin_app/exports/exportingFile.dart';
import 'package:hive/hive.dart';

import '../Data/data.dart';

class IntroCard extends StatefulWidget {
  const IntroCard({Key? key}) : super(key: key);

  @override
  State<IntroCard> createState() => _IntroCardState();
}

class _IntroCardState extends State<IntroCard> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    final _myBox = Hive.box('mybox');
     final  Rs;
      _myBox.put("Rupees", 10000);
      Rs = _myBox.get("Rupees");

    return Container(
      height: 170,
      width: double.infinity,
      decoration:const BoxDecoration(
        color: AppColors.primaryColor,
      ),
      child:  Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 10),
        child: Container(
          decoration:  BoxDecoration(
              color: AppColors.whiteColor,
              borderRadius: BorderRadius.circular(15),
              boxShadow: const [
                BoxShadow(
                  offset: const Offset(5, 5),
                  color: AppColors.shadowColor,
                  blurRadius: 10,
                  spreadRadius: 2,

                ),
                BoxShadow(
                  offset:  Offset(-5, -5),
                  color: AppColors.shadowColor,
                  blurRadius: 10,
                  spreadRadius: 2,

                ),
              ]
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    const SizedBox(height: 10,),
                    Image.asset("lib/assets/images/easypaisalogo.png", width: 150, ),
                    // SizedBox(height: 10,),

                    const Text('Avalible Balance', style: TextStyle(fontWeight: FontWeight.w500),),
                    Row(
                      children:  [

                        Text('Rs. '+Rs.toString(), style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),),
                        SizedBox(width: 25,),
                        Icon(Icons.arrow_forward_rounded,),
                      ],
                    ),
                    const SizedBox(height: 10,),
                    Row(
                      children: const [
                        Icon(FontAwesomeIcons.arrowRotateLeft, size: 15,),
                        SizedBox(width: 10,),
                        Text('Updated Just Now', ),
                      ],
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Image.asset("lib/assets/images/coin.png", width: 40, ),
                        const Text('My Rewards', style: TextStyle(fontWeight: FontWeight.w500),),

                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: AppColors.primaryColor,
                          borderRadius: BorderRadius.circular(15)
                      ),
                      child: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                          child: Text('Add Cash',style: TextStyle(color: AppColors.whiteColor),)),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ) ,
    );
  }
}

