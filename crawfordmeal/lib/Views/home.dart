import 'package:community_material_icon/community_material_icon.dart';
import 'package:crawfordmeal/Controller/uiController.dart';
import 'package:crawfordmeal/Views/Constant/colors.dart';
import 'package:crawfordmeal/Views/Screens/menu.dart';
import 'package:crawfordmeal/Views/Screens/offers.dart';
import 'package:crawfordmeal/Views/Screens/profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Component/fabDesign.dart';
import 'Screens/firstScreen.dart';
import 'Screens/more.dart';

class Home extends StatelessWidget {
  final UiController controller = Get.put(UiController(),permanent: false);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:FABBottomAppBar(
        centerItemText: '',
        color: tinyTextColor,
        backgroundColor: Colors.white,
        selectedColor: cardColor,
        notchedShape: CircularNotchedRectangle(),
        onTabSelected: controller.changeTab,
        items: [
          FABBottomAppBarItem(iconData: Icons.widgets, text: 'Menu'),
          FABBottomAppBarItem(iconData: CommunityMaterialIcons.shopping, text: 'Orders'),
          FABBottomAppBarItem(iconData: Icons.person, text: 'Profile'),
          FABBottomAppBarItem(iconData: CommunityMaterialIcons.menu_open, text: 'More'),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () => controller.tabIndex.value = 4,
        elevation: 0,
        child: Icon(
          CommunityMaterialIcons.home,
          color: Colors.white,
        ),
        backgroundColor:cardColor,
      ),
      body: Obx(()=> SafeArea(
        child: IndexedStack(
          index: controller.tabIndex.value,
          children: [
            Menu(),
            Orders(),
            Profile(),
            More(),
            FirstScreen(),
          ],
        ),
      )),
    );
  }
}
