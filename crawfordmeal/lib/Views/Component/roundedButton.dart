import 'package:crawfordmeal/Views/Constant/colors.dart';
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String label;
  final Function onPress;

  const RoundedButton({Key key, this.label="Login", this.onPress}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 56,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: cardColor,
      ),
      child: TextButton(
        onPressed: onPress,
        style: ButtonStyle(
          shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)))
        ),
        child: Text(label,
          style: TextStyle(fontSize: 16,color: Colors.white),
        ),
      ),
    );
  }
}
