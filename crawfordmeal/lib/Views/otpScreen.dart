import 'package:crawfordmeal/Views/home.dart';
import 'package:crawfordmeal/Views/login.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:crawfordmeal/Views/Constant/styles.dart';
import 'package:get/get.dart';

import 'Component/inputInput.dart';
import 'Component/roundedButton.dart';
class OtpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 34),
            child: Column(
              children: [
                SizedBox(
                  height: 60,
                ),
                Text("We have sent an OTP to your Mobile",style: t30B,textAlign: TextAlign.center,),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Text("Please check your mobile number 071*****12 continue to reset your password",style: t14s,textAlign: TextAlign.center,),
                ),
                SizedBox(
                  height: 54,
                ),
                InputStyle(
                  type: TextInputType.number,
                  label: "OTP",
                ),
                SizedBox(
                  height: 34,
                ),
                RoundedButton(
                  onPress: ()=> Get.offAll(Home()),
                  label: "Next",
                ),
                SizedBox(
                  height: 32,
                ),
                RichText(text:
                TextSpan(children: [
                  TextSpan(text: "Didn't Receive?",style: t14s),
                  TextSpan(
                    text: " Click Here",
                    style: t14blue,
                    recognizer: TapGestureRecognizer()..onTap=()=>Get.defaultDialog(title: "OTP"),
                  ),
                ],
                ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
