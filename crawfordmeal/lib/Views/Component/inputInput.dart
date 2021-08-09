import 'package:crawfordmeal/Views/Constant/colors.dart';
import 'package:crawfordmeal/Views/Constant/styles.dart';
import 'package:flutter/material.dart';

class InputStyle extends StatelessWidget {
  final String label;
  final bool obscure;
  final bool enable;
  final Icon icon;
  final double horizontal;
  final double vertical;
  final TextInputType type;

  const InputStyle({Key key, this.label = "Your Email", this.obscure = false, this.type, this.icon, this.horizontal = 20, this.vertical = 0, this.enable = true}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      child: Center(
        child: TextField(
          enabled: enable,
          obscureText: obscure,
          keyboardType: type,
          style: t16b,
          decoration: InputDecoration(
            hintText: label,
            border: InputBorder.none,
            hintStyle: t16s,
            prefix: icon??icon,
            filled: false,
            contentPadding: EdgeInsets.symmetric(horizontal: horizontal,vertical: vertical)
          ),
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: inputColor,
      ),
    );
  }
}
