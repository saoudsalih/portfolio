import 'package:flutter/material.dart';

class Service {
  final int? id;
  final String? title, image;
  final Color? color;

  Service({this.id, this.title, this.image, this.color});
}

// For demo list of service
List<Service> services = [
  Service(
    id: 1,
    title: "Flutter App \nDevelopment",
    image: "assets/images/flutter.png",
    color: Color(0xFFD9FFFC),
  ),
  Service(
    id: 2,
    title: "Android Native \nDevelopment",
    image: "assets/images/android.png",
    color: Color(0xFFE4FFC7),
  ),
   Service(
    id: 3,
    title: "iOS Native \nDevelopment",
    image: "assets/images/ios.png",
    color: Color(0xFFFFE0E0),
  ),
  Service(
    id: 4,
    title: "UI/UX Design",
    image: "assets/images/ui.png",
    color: Color(0xFFFFF3DD),
  ),
 
];
