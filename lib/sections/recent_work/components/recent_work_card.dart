import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:web_app/models/RecentWork.dart';
import 'dart:js' as js;

import '../../../constants.dart';

class RecentWorkCard extends StatefulWidget {
  // just press "Command + ."
  const RecentWorkCard({
    Key? key,
    required this.index,
    required this.press,
  }) : super(key: key);

  final int index;
  final Function() press;

  @override
  _RecentWorkCardState createState() => _RecentWorkCardState();
}

class _RecentWorkCardState extends State<RecentWorkCard> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.press,
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        height: 320,
        width: 540,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [if (isHover) kDefaultCardShadow],
        ),
        child: Row(
          children: [
            SizedBox(
              width: 280,
              height: 280,
              child: Image.asset(recentWorks[widget.index].image!)),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(recentWorks[widget.index].category!.toUpperCase()),
                    SizedBox(height: kDefaultPadding / 2),
                    Text(
                      recentWorks[widget.index].title!,
                      style: Theme.of(context)
                          .textTheme
                          .headline5!
                          .copyWith(height: 1.5),
                    ),
                    SizedBox(height: kDefaultPadding),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () => js.context.callMethod('open', [recentWorks[widget.index].playstore]),
                          child: SizedBox(width: 90, child: Image.asset("assets/images/playstore.png"))),
                        SizedBox(width: kDefaultPadding / 2),
                        GestureDetector(
                              onTap: () => js.context.callMethod('open', [recentWorks[widget.index].appstore]),
                          child: SizedBox(width: 90, child: Image.asset("assets/images/appstore.jpeg"))),
                 
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
