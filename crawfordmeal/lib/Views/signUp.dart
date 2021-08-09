import 'package:crawfordmeal/Views/homePage.dart';
import 'package:crawfordmeal/Views/login.dart';
import 'package:crawfordmeal/Views/otpScreen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Component/inputInput.dart';
import 'Component/roundedButton.dart';
import 'Constant/styles.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => Get.to(HomePage()),
      child: Scaffold(
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 34),
              child: Column(
                children: [
                  SizedBox(
                    height: 60,
                  ),
                  Text(
                    "Sign Up",
                    style: t30B,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Add your details to sign up",
                    style: t14s,
                  ),
                  SizedBox(
                    height: 36,
                  ),
                  InputStyle(
                    type: TextInputType.name,
                    label: "Name",
                  ),
                  SizedBox(
                    height: 28,
                  ),
                  InputStyle(
                    type: TextInputType.emailAddress,
                  ),
                  SizedBox(
                    height: 28,
                  ),
                  InputStyle(
                    label: "Mobile No",
                    type: TextInputType.phone,
                  ),
                  SizedBox(
                    height: 28,
                  ),
                  InputStyle(
                    type: TextInputType.streetAddress,
                    label: "Address",
                  ),
                  SizedBox(
                    height: 28,
                  ),
                  InputStyle(
                    label: "Password",
                    obscure: true,
                  ),
                  SizedBox(
                    height: 28,
                  ),
                  InputStyle(
                    label: "Confirm Password",
                    obscure: true,
                  ),
                  SizedBox(
                    height: 28,
                  ),
                  RoundedButton(
                    onPress: ()=>Get.to(OtpScreen()),
                    label: "Sign Up",
                  ),
                  SizedBox(
                    height: 49,
                  ),
                  RichText(text:
                  TextSpan(children: [
                    TextSpan(text: "Already have an Account?",style: t14s),
                    TextSpan(
                      text: " Login",
                      style: t14blue,
                      recognizer: TapGestureRecognizer()..onTap=()=>Get.off(Login()),
                    ),
                  ],
                  ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
