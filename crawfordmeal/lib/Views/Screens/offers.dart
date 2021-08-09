import 'package:community_material_icon/community_material_icon.dart';
import 'package:crawfordmeal/Views/Component/inputInput.dart';
import 'package:crawfordmeal/Views/Constant/colors.dart';
import 'package:crawfordmeal/Views/Constant/inSchool.dart';
import 'package:crawfordmeal/Views/Constant/styles.dart';
import 'package:flutter/material.dart';

class Orders extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            SizedBox(
              height: 30.8,
            ),
            //Offers text
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Offers",style: t20B,),
                IconButton(
                    onPressed: (){},
                    icon: Icon(
                      CommunityMaterialIcons.filter,
                      color: smallTextColor,
                    ),
                ),
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
              label: "Search Items",
            ),
            //Offers text
            SizedBox(
              height: 60,
            ),

            //List of items
            ListView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: mostPopular.map((e) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 8),
                child: Row(
                  children: [
                    Container(
                      height: 80,
                      width: 74,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage(e.foodImage),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 22,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 228,
                          child: Text(e.foodName,style: t18b,overflow: TextOverflow.ellipsis,),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Text(e.type),
                            SizedBox(
                              width: 5,
                            ),
                            CircleAvatar(
                              radius: 1.5,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(e.popularDish),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Icon(
                              CommunityMaterialIcons.star,
                              color: cardColor,
                              size: 10.19,
                            ),
                            SizedBox(
                              width: 6.2,
                            ),
                            Text(e.rating,style: t11blue,),
                            SizedBox(
                              width: 8,
                            ),
                            Text("(${e.noRating} Ratings)"),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              )).toList(),
            ),
            //Items list
          ],
        ),
      ),
    );
  }
}
