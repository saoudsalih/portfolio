import 'package:flutter/material.dart';

import '../constants.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key,
    required this.imageSrc,
    required this.text,
    required this.press,
  }) : super(key: key);

  final String imageSrc, text;
  final Function() press;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:ShapeDecoration(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        color: Color(0xFFE8F0F9), ),
        padding: EdgeInsets.symmetric(
          vertical: kDefaultPadding,
          horizontal: kDefaultPadding * 2.5,
        ),
      child: TextButton(
        onPressed: press,
        child: Row(
          children: [
            Image.asset(imageSrc, height: 40),
            SizedBox(width: kDefaultPadding),
            Text(text),
          ],
        ),
      ),
    );
  }
}
