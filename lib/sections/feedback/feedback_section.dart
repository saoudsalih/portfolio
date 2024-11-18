import 'package:flutter/material.dart';
import 'package:web_app/components/section_title.dart';
import 'package:web_app/constants.dart';
import 'package:web_app/models/Feedback.dart';
import 'package:web_app/sections/topSection/components/menu.dart';

import 'components/feedback_card.dart';

class MySKills extends StatelessWidget {
  const MySKills({key});

  @override
  Widget build(BuildContext context) {
    return Container(
      key: itemKeys[4],
      padding: EdgeInsets.symmetric(vertical: kDefaultPadding * 2.5),
      constraints: BoxConstraints(maxWidth: 1110),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SectionTitle(
            title: "Skills",
            subTitle: "Developed career skills",
            color: Color(0xFF00B1FF),
          ),
          SizedBox(height: kDefaultPadding),
          Container(
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    AnimatedLinearProgressIndicator(
                      percentage: 1,
                      title: 'Flutter Framework',
                      image: 'assets/images/flutter.png',
                    ),
                    AnimatedLinearProgressIndicator(
                        percentage: 1,
                        title: 'Dart',
                        image: 'assets/images/dart.png'),
                    AnimatedLinearProgressIndicator(
                        percentage: 1,
                        title: 'Android, Android Studio',
                        image: 'assets/images/android.png'),
                    AnimatedLinearProgressIndicator(
                        percentage: .8,
                        title: 'Java',
                        image: 'assets/images/java.png'),
                    AnimatedLinearProgressIndicator(
                        percentage: .5,
                        title: 'iOS, Xcode',
                        image: 'assets/images/ios.png'),
                    AnimatedLinearProgressIndicator(
                        percentage: .5,
                        title: 'Swift',
                        image: 'assets/images/swift.png'),
                          AnimatedLinearProgressIndicator(
                        percentage: .1,
                        title: 'Node js',
                        image: 'assets/images/node.png'),
                    AnimatedLinearProgressIndicator(
                        percentage: .8,
                        title: 'Fireabase',
                        image: 'assets/images/firebase.png'),
                    AnimatedLinearProgressIndicator(
                        percentage: .5,
                        title: 'AWS',
                        image: 'assets/images/aws.png'),
                    AnimatedLinearProgressIndicator(
                        percentage: .8,
                        title: 'MySQL, SQLite, RealmDB, Room',
                        image: 'assets/images/database.png'),
                    AnimatedLinearProgressIndicator(
                        percentage: .5,
                        title: 'MongoDB',
                        image: 'assets/images/database.png'),
                    AnimatedLinearProgressIndicator(
                        percentage: .8,
                        title: 'Google Maps, Geolocation,',
                        image: 'assets/images/google_map.png'),
                  ],
                ),
                SizedBox(
                  width: 60,
                ),
                Column(
                  children: [
                    AnimatedLinearProgressIndicator(
                      percentage: .8,
                      title: 'PayUmoney, Paypal',
                      image: 'assets/images/payment.png',
                    ),
                    AnimatedLinearProgressIndicator(
                        percentage: 1,
                        title: 'UI/UX Design',
                        image: 'assets/images/ui-ux.png'),
                    AnimatedLinearProgressIndicator(
                        percentage: 1,
                        title: 'REST APIs',
                        image: 'assets/images/firebase.png'),
                    AnimatedLinearProgressIndicator(
                        percentage: .5,
                        title:
                            'Unit Testing, Integration Testing, Widget Testing',
                        image: 'assets/images/testing.png'),
                    AnimatedLinearProgressIndicator(
                        percentage: 1,
                        title: 'Git',
                        image: 'assets/images/git.png'),
                    AnimatedLinearProgressIndicator(
                        percentage: 1,
                        title: 'Jira, ClickUp',
                        image: 'assets/images/flutter.png'),
                           AnimatedLinearProgressIndicator(
                        percentage: .8,
                        title: 'Redux, Provider',
                        image: 'assets/images/flutter.png'),
                    AnimatedLinearProgressIndicator(
                        percentage: .5,
                        title: 'Clean Architecture',
                        image: 'assets/images/flutter.png'),
                    AnimatedLinearProgressIndicator(
                        percentage: .8,
                        title: 'MVVM, MVP',
                        image: 'assets/images/android.png'),
                    AnimatedLinearProgressIndicator(
                        percentage: .6,
                        title: 'MVC',
                        image: 'assets/images/ios.png'),
                    AnimatedLinearProgressIndicator(
                        percentage: .3,
                        title: 'Bloc',
                        image: 'assets/images/bloc.png'),
                    AnimatedLinearProgressIndicator(
                        percentage: .5,
                        title: 'Getx',
                        image: 'assets/images/dart.png'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class AnimatedLinearProgressIndicator extends StatelessWidget {
  const AnimatedLinearProgressIndicator(
      {key, required this.percentage, required this.title, this.image});
  final double percentage;
  final String title;
  final String? image;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .25,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 20 / 2),
        child: TweenAnimationBuilder(
          tween: Tween(begin: 0.0, end: percentage),
          duration: const Duration(seconds: 1),
          builder: (context, value, child) {
            return Column(
              children: [
                Row(
                  children: [
                    Image.asset(
                      image!,
                      height: 15,
                      width: 15,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      title,
                      style: const TextStyle(color: Colors.black),
                    ),
                    const Spacer(),
                    Text(
                        '${(double.parse(value.toString()) * 100).toString()}%'),
                  ],
                ),
                const SizedBox(
                  height: 20 / 2,
                ),
                LinearProgressIndicator(
                  value: double.parse(value.toString()),
                  backgroundColor: Colors.grey,
                  color: Color(0xFF00B1FF),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

// class FeedbackSection extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       key: itemKeys[4],
//       padding: EdgeInsets.symmetric(vertical: kDefaultPadding * 2.5),
//       constraints: BoxConstraints(maxWidth: 1110),
//       child: Column(
//         children: [
//           SectionTitle(
//             title: "Skills",
//             subTitle: "Client’s testimonials that inspired me a lot",
//             color: Color(0xFF00B1FF),
//           ),
//           SizedBox(height: kDefaultPadding),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: List.generate(
//               feedbacks.length,
//               (index) => FeedbackCard(index: index),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
