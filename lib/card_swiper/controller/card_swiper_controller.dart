import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:get/get.dart';

class CardController extends GetxController {
  CardSwiperController swiperController = CardSwiperController();

  List<Map<String, dynamic>> imagesMap = [
    {
      "images": 'assets/images4.png',
      "name": "John",
      "niche": "Traveler",
      "relvance_score": 60,
    },
    {
      "images": 'assets/images2.png',
      "name": "Tina",
      "niche": "Fitness Trainer",
      "relvance_score": 75,
    },
    {
      "images": 'assets/images9.png',
      "name": "Alice",
      "niche": "Web Developer",
      "relvance_score": 97,
    },
    {
      "images": 'assets/images8.png',
      "name": "Bob",
      "niche": "Graphic Designer",
      "relvance_score": 93,
    },
    {
      "images": 'assets/images6.png',
      "name": "Carol",
      "niche": "Photographer",
      "relvance_score": 85,
    },
    {
      "images": 'assets/images7.png',
      "name": "David",
      "niche": "UI/UX Designer",
      "relvance_score": 75,
    },
    {
      "images": 'assets/images8.png',
      "name": "Eva",
      "niche": "Software Developer",
      "relvance_score": 98,
    },
  ].obs;
}
