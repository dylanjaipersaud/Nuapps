import 'package:flutter/cupertino.dart';

class Category {
  String title;
  int lessonCount;
  int money;
  double rating;
  String imagePath;

  Category({
    this.title = '',
    this.imagePath = '',
    this.lessonCount = 0,
    this.money = 0,
    this.rating = 0.0,
  });

  static List<Category> categoryList = [
    Category(
      imagePath: 'assets/images/nuappslightlogo.png',
      title: 'Nuapps',
      lessonCount: 24,
      money: 25,
      rating: 4.3,
    ),
    Category(
      imagePath: 'assets/images/nuappslightlogo.png',
      title: 'Nuapps',
      lessonCount: 22,
      money: 18,
      rating: 4.6,
    ),
    Category(
      imagePath: 'assets/design_course/nuappslightlogo.png',
      title: 'Nuapps',
      lessonCount: 24,
      money: 25,
      rating: 4.3,
    ),
    Category(
      imagePath: 'assets/images/nuappslightlogo.png',
      title: 'Nuapps',
      lessonCount: 22,
      money: 18,
      rating: 4.6,
    ),
  ];

  static List<Category> popularCourseList = [
    Category(
      imagePath: 'assets/images/nuappslightlogo.png',
      title: 'Nuapps Designs',
      lessonCount: 12,
      money: 25,
      rating: 4.8,
    ),
    Category(
      imagePath: 'assets/images/nuappslightlogo.png',
      title: 'Nuapps Web Design',
      lessonCount: 28,
      money: 208,
      rating: 4.9,
    ),
    Category(
      imagePath: 'assets/images/nuappslightlogo.png',
      title: 'Nuapps App Design',
      lessonCount: 12,
      money: 25,
      rating: 4.8,
    ),
    Category(
      imagePath: 'assets/images/nuappslightlogo.png',
      title: 'Nuapps Web Design',
      lessonCount: 28,
      money: 208,
      rating: 4.9,
    ),
  ];
}
