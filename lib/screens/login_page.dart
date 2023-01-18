import 'package:easy_paisa_coin_app/exports/exportingFile.dart';
import 'package:easy_paisa_coin_app/screens/signUpScreen.dart';
import 'package:easy_paisa_coin_app/utils/tosting.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../Components/my_btn.dart';
import '../Components/my_textField.dart';
import '../Components/square_tile.dart';


class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // text editing controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool loading = false;
  final _auth = FirebaseAuth.instance;
  // final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }
  // sign user in method
void signInUser(){
    setState(() {
      loading = true;
    });
// if(_formKey.currentState!.validate()){
_auth.signInWithEmailAndPassword(email: emailController.text.toString(), password: passwordController.text.toString()).then((value){
  Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
  setState(() {
    loading = false;
  });
}).onError((error, stackTrace){
Toasting().toastMessage(error.toString());
setState(() {
  loading = false;
});
});
// }
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.greenTint,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 50),

                // logo
                Image.asset("lib/assets/images/easypaisalogo.png", ),

                const SizedBox(height: 50),

                // welcome back, you've been missed!
                Text(
                  'Welcome back you\'ve been missed!',
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 16,
                  ),
                ),

                const SizedBox(height: 25),

                // email textfield

                     MyTextField(
                       controller: emailController,
                       hintText: 'Email',
                       obscureText: false,
                     ),

                     const SizedBox(height: 10),

                     // password textfield
                     MyTextField(
                       controller: passwordController,
                       hintText: 'Password',
                       obscureText: true,
                     ),

                const SizedBox(height: 10),

                // forgot password?
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Forgot Password?',
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 25),

                // sign in button
                MyButton(
                  onTap: signInUser,
                  loading: loading,
                ),

                const SizedBox(height: 50),


                const SizedBox(height: 50),

                // not a member? register now
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Not a member?',
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                    const SizedBox(width: 4),
                    InkWell(
                    onTap: (){
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignUpScreen()),
                    );
                    },
                      child: Text(
                        'Register now',
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}