import 'package:community_material_icon/community_material_icon.dart';
import 'package:crawfordmeal/Views/Constant/colors.dart';
import 'package:crawfordmeal/Views/Constant/styles.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 30.8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Profile",style: t20B,),
                IconButton(onPressed: (){}, icon: Icon(CommunityMaterialIcons.cart,color: smallTextColor,))
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 102,
                    width: 102,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      image: DecorationImage(
                        image: AssetImage("images/cake.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Stack(
                      fit: StackFit.loose,
                      children: [
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            width: 86.01,
                            height: 23.42,
                            child: Center(
                              child: Icon(CommunityMaterialIcons.camera, color: smallTextColor,),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  TextButton.icon(
                    onPressed: (){},
                    icon: Icon(Icons.edit,color: cardColor, size: 10.81,),
                    label: Text(
                      "Edit Profile",
                      style: t10blue,
                    ),
                  ),
                  SizedBox(
                    height: 11,
                  ),
                  Text("Hi there Emilia!",style: t16b,),
                  SizedBox(
                    height: 4,
                  ),
                  GestureDetector(
                    onTap: (){},
                    child: Text("Sign Out",style: t11sLight,),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
