import 'package:flutter/material.dart';
import 'package:easy_paisa_coin_app/exports/exportingFile.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bodyBg,
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: AppColors.primaryColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const CircleAvatar(
              backgroundColor: AppColors.profileBg,
              child: Text('SU', style: TextStyle(fontWeight: FontWeight.bold, color: AppColors.blackColor),),
            ),
            Image.asset("lib/assets/images/easypaisa.png", width: 150, ),
            Row(
              children: const [
                Icon(Icons.search_rounded, size: 27,),
                Icon(Icons.notifications_outlined, size: 30,),
              ],
            )
          ],
        ),
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          const IntroCard(),
          const SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomContainer(child: Column(
                  children: [
                    Image.asset("lib/assets/images/cashIcon.png", width: 60, height: 60,),
                    Text('Send Money', style: TextStyle(fontWeight: FontWeight.bold),)

                  ],
                ),),
                CustomContainer(child: Column(
                  children: [
                    SizedBox(height: 5,),
                    Image.asset("lib/assets/images/billPayment.png", width: 60, height: 60,),
                    Text('Bill Payment', style: TextStyle(fontWeight: FontWeight.bold),)

                  ],
                ),),
                CustomContainer(child: Column(
                  children: [
                    SizedBox(height: 5,),
                    Image.asset("lib/assets/images/billPayment.png", width: 60, height: 60,),
                    Text('Money Pack', style: TextStyle(fontWeight: FontWeight.bold),)

                  ],
                ),),
              ],
            ),
          ),
          const SizedBox(height: 20,),

          const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text('More with EasyPaisa', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),)),

          const MoreItems()
        ],
      ),

    );
  }
}


