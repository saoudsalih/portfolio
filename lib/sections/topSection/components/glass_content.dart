import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'dart:js' as js;

class GlassContent extends StatelessWidget {
  const GlassContent({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 2),
          constraints:
              BoxConstraints(maxWidth: 1110, maxHeight: size.height * 0.7),
          width: double.infinity,
          color: Colors.white.withOpacity(0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Hello There!",
                style: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(color: Colors.white),
              ),
              Text(
                "Saoud \nSalih Hassan",
                style: TextStyle(
                  fontSize: 100,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  height: 1.5,
                ),
              ),
              Text(
                "Software Development Engineer 3",
                style: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(color: Colors.white),
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      js.context.callMethod('open', [
                        'https://stackoverflow.com/users/6477931/saoud-salih-hassan'
                      ]);
                    },
                    child: Container(
                        width: 25,
                        height: 25,
                        child: Image.asset("assets/images/stackoverflow.png")),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      js.context.callMethod('open', [
                        'https://github.com/saoudsalih'
                      ]);
                    },
                    child: Container(
                        width: 25,
                        height: 25,
                        child: Image.asset("assets/images/git.png")),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      js.context.callMethod('open', [
                        'https://www.linkedin.com/in/saoudssa/'
                      ]);
                    },
                    child: Container(
                        width: 25,
                        height: 25,
                        child: Image.asset("assets/images/linkedin.png")),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
