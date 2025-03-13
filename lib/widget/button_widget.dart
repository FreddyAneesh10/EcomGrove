import 'package:e_commerce/widget/text_widget.dart';
import 'package:flutter/material.dart';

import 'icon_widget.dart';

class ButtonWidget extends StatelessWidget {
  final void Function()? onPressed;
  final String text;
  final Color? color;
  final Color? textColor;
  final double? width;
  final IconData? icon;
  final BorderSide? side;

  const ButtonWidget({
    super.key,
    this.onPressed,
    required this.text,
    this.color,
    this.icon,
    this.side,
    this.width, this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: width,
        height: 60,
        child: ElevatedButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                // borderRadius: BorderRadius.circular(15),
                side:BorderSide(color: Colors.grey), // Use provided side or none
              ),
            ),
            backgroundColor: MaterialStatePropertyAll(color ?? Colors.blue), // Fix here
          ),
          onPressed: onPressed,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextWidget(
                text: text,
                color: textColor,
                size: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
