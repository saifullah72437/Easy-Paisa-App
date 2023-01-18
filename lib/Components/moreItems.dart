import 'package:flutter/material.dart';
import 'package:easy_paisa_coin_app/exports/exportingFile.dart';


class MoreItems extends StatelessWidget {
  const MoreItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(15),
          boxShadow:  [
            BoxShadow(
              offset:const  Offset(5, 5),
              color: Colors.grey.shade300,
              blurRadius: 10,
              spreadRadius: -1,

            ),
            BoxShadow(
              offset: const Offset(-5, -5),
              color: Colors.grey.shade300,
              blurRadius: 10,
              spreadRadius: -1,

            ),

          ],

        ),
        child: Padding(
          padding:const EdgeInsets.symmetric(horizontal: 15),
          child: Column(

            children: [
              const SizedBox(height: 20,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 const SizedBox(width: 5,),
                  Column(
                    children: [
                      Image.asset("lib/assets/images/easyload.png", width: 50, height: 50,),
                     const Text('Easyload', style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12),),

                    ],
                  ),
                  Column(
                    children: [
                      Image.asset("lib/assets/images/easycashload.png", width: 50, height: 50,),
                      const Text('Easycash Loan', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12),),

                    ],
                  ),
                     InkWell(
                       onTap: (){
                         Navigator.push(
                           context,
                           MaterialPageRoute(builder: (context) => RupeeGame()),
                         );                       },
                       child: Column(
                    children: [
                        Image.asset("lib/assets/images/rewards.png", width: 50, height: 50,),
                        const Text('Rs.1 Game', style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12),),

                    ],
                  ),
                     ),
                  Column(
                    children: [
                      Image.asset("lib/assets/images/earnandinvite.png", width: 50, height: 50,),
                      const  Text('Invite & Earn', style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12),),

                    ],
                  ),

                ],
              ),
              const SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Image.asset("lib/assets/images/rastpayment.png", width: 50, height: 50,),
                      const  Text('Raast\nPayment', style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12), textAlign: TextAlign.center,),

                    ],
                  ),
                  Column(
                    children: [
                      Image.asset("lib/assets/images/miniapp.png", width: 50, height: 50,),
                      const  Text('Mini App', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12),),

                    ],
                  ),
                  Column(
                    children: [
                      Image.asset("lib/assets/images/savings.png", width: 50, height: 50,),
                      const  Text('Savings', style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12),),

                    ],
                  ),
                  Column(
                    children: [
                      Image.asset("lib/assets/images/insurance.png", width: 50, height: 50,),
                      const Text('Insurance', style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12),),

                    ],
                  ),

                ],
              ),

              const SizedBox(height: 20,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Image.asset("lib/assets/images/foodanddonation.png", width: 50, height: 50,),
                      const  Text('Food Relief\nand donation', style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12),textAlign: TextAlign.center,),

                    ],
                  ),
                  Column(
                    children: [
                      Image.asset("lib/assets/images/tohfa.png", width: 50, height: 50,),
                      const  Text('Tohfa', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12),),

                    ],
                  ),
                  Column(
                    children: [
                      Image.asset("lib/assets/images/seemores.png", width: 50, height: 50,),
                      const   Text('See All', style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12),),

                    ],
                  ),
               const   SizedBox(width: 50,)

                ],
              ),
              const SizedBox(height: 20,)
            ],

          ),
        ),
      ),
    );
  }
}
