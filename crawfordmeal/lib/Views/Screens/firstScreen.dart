import 'package:community_material_icon/community_material_icon.dart';
import 'package:crawfordmeal/Views/Component/inputInput.dart';
import 'package:crawfordmeal/Views/Constant/colors.dart';
import 'package:crawfordmeal/Views/Constant/inSchool.dart';
import 'package:crawfordmeal/Views/Constant/styles.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 32.8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Good morning Akila!",style: t20B,),
                    IconButton(onPressed: (){}, icon: Icon(CommunityMaterialIcons.cart,color: smallTextColor,))
                  ],
                ),
                SizedBox(
                  height: 21,
                ),
                Text("Delivering to",style: t11s,),
                SizedBox(
                  height: 5,
                ),
                GestureDetector(
                  onTap: (){},
                  child: Row(
                    children: [
                      Text("Current Location",style: t16b,),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.arrow_drop_down,color: smallTextColor,)
                    ],
                  ),
                ),
                SizedBox(
                  height: 34,
                ),
                InputStyle(
                  icon: Icon(
                    Icons.search,
                    color: smallTextColor,
                  ),
                  label: "Search vendors",
                ),
              ],
            ),
          ),
          SizedBox(
            height: 39,
          ),
          Container(
            height: 115,
            child: ListView(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              children: schoolOptions.map((e) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: GestureDetector(
                  onTap: (){},
                  child: Container(
                    height: 113,
                    width: 88,
                    child: Column(
                      children: [
                        Container(
                          height: 88,
                          width: 88,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                image: AssetImage(e.image,),
                                fit: BoxFit.cover,
                              )
                          ),
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Center(
                          child: Text(
                            e.name,
                            style: t14b,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )).toList(),
            ),
          ),
          SizedBox(
            height: 58,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 17.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Popular Restaurants",style: t20B,),
                GestureDetector(
                  onTap: (){},
                  child: Text("View all",style: t13blue,),
                ),
              ],
            ),
          ),
          ListView(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            children: restaurantOptions.map((e) => Column(
              children: [
                SizedBox(height: 31,),
                Column(
                  children: [
                    Container(
                      height: 200,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(e.image),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(e.name, style: t16b,),
                          SizedBox(
                            height: 3,
                          ),
                          Row(
                            children: [
                              Icon(CommunityMaterialIcons.star,color: cardColor,size: 14.19,),
                              SizedBox(width: 4.2,),
                              Text(e.rating, style: t11blue,),
                              SizedBox(width: 5,),
                              Text("(${e.noRating} ratings) ${e.type} ", style: t12s,),
                              Container(
                                width: 2,
                                height: 2,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: cardColor,
                                ),
                              ),
                              Text(" ${e.popularDish}", style: t12s,),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            )).toList(),
          ),
          SizedBox(
            height: 42.8,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 17.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Most Popular",style: t20B,),
                GestureDetector(
                  onTap: (){},
                  child: Text("View all",style: t13blue,),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 33,
          ),
          Container(
            height: 228,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: mostPopular.map((e) =>  Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 228,
                      height: 135,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: AssetImage(e.foodImage),
                            fit: BoxFit.cover,
                          )
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 228,
                      child: Text(
                        e.foodName,
                        style: t18b,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    SizedBox(
                      height: 1,
                    ),
                    Row(
                      children: [
                        Text("${e.type} ", style: t12s,),
                        Container(
                          width: 2,
                          height: 2,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: cardColor,
                          ),
                        ),
                        Text(" ${e.popularDish}", style: t12s,),
                        SizedBox(width: 26.9,),
                        Icon(CommunityMaterialIcons.star,color: cardColor,size: 10.19,),
                        SizedBox(width: 6.2,),
                        Text(e.rating, style: t11blue,),
                      ],
                    ),
                  ],
                ),
              )).toList(),
            ),
          ),
          SizedBox(
            height: 37,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 17.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Recent Items",style: t20B,),
                GestureDetector(
                  onTap: (){},
                  child: Text("View all",style: t13blue,),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 26,
          ),
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
          SizedBox(
            height: 22,
          ),
        ],
      ),
    );
  }
}
