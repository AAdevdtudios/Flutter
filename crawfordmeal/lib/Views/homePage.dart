import 'package:crawfordmeal/Views/Component/roundedButton.dart';
import 'package:crawfordmeal/Views/signUp.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Constant/colors.dart';
import 'login.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 350,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(20), bottomLeft: Radius.circular(20)),
                color: cardColor,
              ),
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset("images/backgroundImage.png",fit: BoxFit.cover,),
                  Positioned(
                    bottom: -150,
                    left: 100,
                    right: 100,
                    child: CircleAvatar(
                      radius: 150,
                      backgroundColor: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Image.asset("images/logo.png"),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35.0),
              child: Text(
                "Discover the best foods from over 1,000 restaurants and fast delivery to your doorstep",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: textColor,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: RoundedButton(
                onPress: ()=>Get.to(Login()),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                width: double.infinity,
                height: 56,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(
                    color: cardColor,
                  )
                ),
                child: TextButton(
                  onPressed: ()=>Get.to(SignUp()),
                  child: Text('Create an Account',
                    style: TextStyle(fontSize: 16,color: cardColor,fontWeight: FontWeight.w400,),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 43,
            ),
          ],
        ),
      ),
    );
  }
}