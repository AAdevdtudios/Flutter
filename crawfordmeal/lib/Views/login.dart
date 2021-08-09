import 'package:community_material_icon/community_material_icon.dart';
import 'package:crawfordmeal/Views/Component/inputInput.dart';
import 'package:crawfordmeal/Views/Constant/colors.dart';
import 'package:crawfordmeal/Views/forgotPassword.dart';
import 'package:crawfordmeal/Views/signUp.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import 'Component/authButton.dart';
import 'Component/roundedButton.dart';
import 'Constant/styles.dart';
import 'homePage.dart';

class Login extends StatelessWidget {
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
                    "Login",
                    style: t30B,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Add your details to login",
                    style: t14s,
                  ),
                  SizedBox(
                    height: 36,
                  ),
                  InputStyle(
                    type: TextInputType.emailAddress,
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
                  RoundedButton(
                    onPress: (){},
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  TextButton(
                      onPressed: ()=>Get.to(ForgotPassword()),
                      child: Text(
                          "Forgot your password?",
                        style: t14s,
                      ),
                  ),
                  SizedBox(
                    height: 49,
                  ),
                  Text("or Login With",style: t14s,),
                  SizedBox(
                    height: 27,
                  ),
                  AuthButton(
                    onPress: (){},
                    label: "Login with Facebook",
                  ),
                  SizedBox(
                    height: 28,
                  ),
                  AuthButton(
                    onPress: (){},
                    label: "Login with Google",
                    color: gmColor,
                    icon: CommunityMaterialIcons.google,
                  ),
                  SizedBox(
                    height: 83,
                  ),
                  RichText(text:
                    TextSpan(children: [
                      TextSpan(text: "Don't have an Account?",style: t14s),
                      TextSpan(
                        text: " Sign Up",
                        style: t14blue,
                      recognizer: TapGestureRecognizer()..onTap=()=>Get.to(SignUp()),
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