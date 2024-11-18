import 'package:flutter/material.dart';
import 'package:web_app/components/default_button.dart';
import 'package:web_app/components/my_outline_button.dart';
import 'package:web_app/constants.dart';
import 'package:web_app/sections/topSection/components/menu.dart';

import 'components/about_section_text.dart';
import 'components/about_text_with_sign.dart';
import 'components/experience_card.dart';
import 'dart:js' as js;


class AboutSection extends StatelessWidget {

  const AboutSection();
  @override
  Widget build(BuildContext context) {
    return Container(
      key: itemKeys[1],
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      constraints: BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AboutTextWithSign(),
              Expanded(
                child: AboutSectionText(
                  text:
                      "Experienced mobile app developer with over 7 years in dynamic environments,specializing in launching 25+ apps across Android and iOS platforms. Proficientin Core Java, Dart, Swift, and the Flutter framework, with expertise in UI/UX design.Demonstrated versatility with various architectural patterns, including MVVM, MVP, MVC and Clean Architecture in both Android and Flutter.",
                ),
              ),
              ExperienceCard(numOfExp: "07"),
              Expanded(
                child: AboutSectionText(
                  text:
                      "Highly skilled in system design and experienced with development tools like Git and JIRA. Recognized for leadership in product development and team management, driving efficient workflows and delivering robust, user-centered applications.",
                ),
              ),
            ],
          ),
          SizedBox(height: kDefaultPadding * 3),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // MyOutlineButton(
              //   imageSrc: "assets/images/hand.png",
              //   text: "Hire Me!",
              //   press: () {},
              // ),
              SizedBox(width: kDefaultPadding * 1.5),
              DefaultButton(
                imageSrc: "assets/images/download.png",
                text: "Download CV",
                press: () {
                  js.context.callMethod('open', ['https://drive.google.com/file/d/1II1fTDVdK6RV1bYJ7NVzgU6RGkGMaIne/view?usp=sharing']);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
