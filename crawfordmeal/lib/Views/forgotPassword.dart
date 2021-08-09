import 'package:crawfordmeal/Views/Constant/styles.dart';
import 'package:flutter/material.dart';

import 'Component/inputInput.dart';
import 'Component/roundedButton.dart';

class ForgotPassword extends StatelessWidget {
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
                Text("Reset Password",style: t30B,),
                SizedBox(
                  height: 12,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Text("Please enter your email to receive a link to  create a new password via email",style: t14s,textAlign: TextAlign.center,),
                ),
                SizedBox(
                  height: 60,
                ),
                InputStyle(
                  type: TextInputType.emailAddress,
                ),
                SizedBox(
                  height: 34,
                ),
                RoundedButton(
                  onPress: (){},
                  label: "Send",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
