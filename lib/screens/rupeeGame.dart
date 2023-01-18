import 'package:easy_paisa_coin_app/Data/data.dart';
import 'package:easy_paisa_coin_app/utils/tosting.dart';
import 'package:flutter/material.dart';
import 'package:easy_paisa_coin_app/exports/exportingFile.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hive/hive.dart';

import '../Components/purchasedBtn.dart';

class RupeeGame extends StatefulWidget {
  const RupeeGame({Key? key}) : super(key: key);

  @override
  State<RupeeGame> createState() => _RupeeGameState();
}

class _RupeeGameState extends State<RupeeGame> {
  late Box _myBox;
  bool purchased = false;

  @override
  void initState() {
    super.initState();
    _myBox = Hive.box('mybox');
    _myBox.put("participated", 174);
  }

 
  @override
  Widget build(BuildContext context) {

    // final _myBox = Hive.box('mybox');
    // _myBox.put("participated", 174);

    return Scaffold(
      backgroundColor: AppColors.bodyBg,
      appBar: AppBar(

        backgroundColor: AppColors.screen2AppBar,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const[

            Text(
              'One Rupee Game',
              style: TextStyle(color: AppColors.blackColor),
            ),
            Icon(
              Icons.warning_amber_rounded,
              color: AppColors.blackColor,
            )
          ],
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Get items worth a fortune\nfor just Rs. 1',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
                'Simply Select a product from below and purchase it for the price for Rs. 1 and get a chance to win',
                style: TextStyle(
                    color: AppColors.greyColor, fontWeight: FontWeight.w500)),

            const SizedBox(height: 30,),
            Container(
              width: 220,
              padding:const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                  color: AppColors.greenTint,
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Row(
                children: [
                  Icon(Icons.star,color: AppColors.greenColor,),
                  Text(_myBox.get('participated').toString()+' have participated', style: TextStyle(color: AppColors.greenColor, fontWeight: FontWeight.w500),),
                ],
              ),
            ),
            const SizedBox(height: 110,),


            Container(
              child: Stack(
                clipBehavior: Clip.none,

                children: [

                  Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                        color: AppColors.screen2AppBar,
                        borderRadius: BorderRadius.circular(15)
                    ),

                  ),
                  Positioned(
                    top: -100,
                    left: 10,
                    right: 10,
                    child: ClipRRect(
                      child: Column(
                          children:[ Container(
                            height: 200,
                            width: 200,
                            decoration: BoxDecoration(
                                color: AppColors.whiteColor,
                                borderRadius: BorderRadius.circular(15)
                            ),
                            child: Image.asset("lib/assets/images/iwatch.png", width: 50, height: 50,),

                          ),
                            const Text('Apple Watch', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,), ),
                            Text(
                                'Price Rs. 100,000',
                                style: TextStyle(
                                  color: AppColors.greyColor, decoration: TextDecoration.lineThrough, )),


                          ]

                      ),
                    ),
                  ),
                  Positioned(
                    bottom: -8,
                    left: 10,
                    right: 10,
                    child: InkWell(
                      onTap: ()  async {
                        setState(()  {
                          _myBox.put("participated", _myBox.get("participated")+ 1);
                          _myBox.put('Rupees', _myBox.get('Rupees') - 1);
                          print(_myBox.get('participated'));
                          purchased = true;

                        });
                          await _myBox.compact();

                        Fluttertoast.showToast(
                            msg: "Contrats You Purchased 1 Token",
                            toastLength: Toast.LENGTH_LONG,
                            gravity: ToastGravity.BOTTOM,
                            timeInSecForIosWeb: 1,
                            backgroundColor: AppColors.greenColor,
                            textColor: Colors.white,
                            fontSize: 16.0
                        );
                          },
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        decoration: BoxDecoration(
                            color: purchased? AppColors.purchasedBtn: AppColors.greenColor,
                            borderRadius: BorderRadius.circular(15)
                        ),
                        child:const  Center(child: Text('Purchased', style: TextStyle(color:
                        AppColors.whiteColor,),),),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

