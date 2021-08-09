import 'package:community_material_icon/community_material_icon.dart';
import 'package:crawfordmeal/Views/Component/inputInput.dart';
import 'package:crawfordmeal/Views/Constant/colors.dart';
import 'package:crawfordmeal/Views/Constant/styles.dart';
import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30.8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Menu",style: t20B,),
                IconButton(onPressed: (){}, icon: Icon(CommunityMaterialIcons.cart,color: smallTextColor,))
              ],
            ),
            SizedBox(
              height: 24,
            ),
            InputStyle(
              icon: Icon(
                Icons.search,
                color: smallTextColor,
              ),
              label: "Search vendors",
            ),
            SizedBox(
              height: 60,
            ),
            Card(
              elevation: 20,
              shadowColor: Colors.white38,
              child: Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(100),
                      topLeft: Radius.circular(100),
                      topRight: Radius.circular(30),
                      bottomRight: Radius.circular(30),)
                ),
                child: Center(
                  child: Text("Hpme"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
