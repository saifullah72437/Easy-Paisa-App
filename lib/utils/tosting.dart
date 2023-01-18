import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Toasting{

  void toastMessage(String mssg){
    Fluttertoast.showToast(
        msg: mssg,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );
  }
}