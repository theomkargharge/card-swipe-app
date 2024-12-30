
import 'package:card_swipe/card_swiper/controller/card_swiper_controller.dart';
import 'package:card_swipe/card_swiper/widgets/card_swiper_widetes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CardSwiperScreen extends GetView<CardController> {
  const CardSwiperScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CardController>(builder: (controller) {
      return Scaffold(
        appBar: appBar(),
        backgroundColor:Colors.white,
        body: Column(
          children: [
            cardSwipeWidget(controller: controller),
            passLikeButton(controller: controller)
          ],
        ),
      );
    });
  }
}
