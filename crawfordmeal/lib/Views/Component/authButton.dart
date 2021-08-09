import 'package:community_material_icon/community_material_icon.dart';
import 'package:crawfordmeal/Views/Constant/colors.dart';
import 'package:crawfordmeal/Views/Constant/styles.dart';
import 'package:flutter/material.dart';

class AuthButton extends StatelessWidget {
  final String label;
  final Function onPress;
  final Color color;
  final IconData icon;

  const AuthButton({Key key, this.label, this.onPress, this.color = fbColor, this.icon=CommunityMaterialIcons.facebook}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 56,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: color,
      ),
      child: TextButton.icon(
        onPressed: onPress,
        style: ButtonStyle(
            shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)))
        ),
        icon: Icon(icon,color: Colors.white,),
        label: Text(label,
          style: t12b,
        ),
      ),
    );
  }
}
