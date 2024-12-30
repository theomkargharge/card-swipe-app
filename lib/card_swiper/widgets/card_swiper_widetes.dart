import 'package:card_swipe/card_swiper/controller/card_swiper_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';

// app bar
AppBar appBar() {
  return AppBar(
    backgroundColor: Colors.pinkAccent.withOpacity(0.8),
    centerTitle: true,
    title: Hero(
      tag: 'cs',
      child: Text(
        'Cards Swipe',
        style: TextStyle(
          fontSize: 25.sp,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    ),
  );
}

// card swiper widget

Widget cardSwipeWidget({required CardController controller}) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 5.w),
    height: 630.h,
    width: double.infinity,
    child: CardSwiper(
      controller: controller.swiperController,
      cardsCount: controller.imagesMap.length,
      cardBuilder: (context, index, x, y) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(12.w),
          child: Stack(
            fit: StackFit.expand,
            children: [
              Image.asset(
                filterQuality: FilterQuality.high,
                controller.imagesMap[index]['images'],
                fit: BoxFit.fitHeight,
              ),
              Positioned(
                top: 450.h,
                left: 10.w,
                child: SizedBox(
                  height: 30.h,
                  width: 300.w,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 3.0.h),
                        child: Icon(
                          Icons.person_outline,
                          color: Colors.white,
                          size: 25.w,
                        ),
                      ),
                      Text(
                        '${controller.imagesMap[index]['name']}',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 485.h,
                left: 10.w,
                child: SizedBox(
                  height: 30.h,
                  width: 300.w,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 3.0.w),
                        child: Icon(
                          Icons.favorite_outline,
                          color: Colors.white,
                          size: 25.w,
                        ),
                      ),
                      Text(
                        '${controller.imagesMap[index]['niche']}',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 520.h,
                left: 10.w,
                child: SizedBox(
                  height: 30.h,
                  width: 300.w,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 3.0.h),
                        child: Icon(
                          Icons.score_outlined,
                          color: Colors.white,
                          size: 25.w,
                        ),
                      ),
                      Text(
                        '${controller.imagesMap[index]['relvance_score']}',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
      numberOfCardsDisplayed: 2,
      isLoop: true,
      onSwipe: (prevoius, current, direction) {
        if (direction == CardSwiperDirection.right) {
          Fluttertoast.showToast(
              gravity: ToastGravity.CENTER,
              msg: ' ❤️ ',
              backgroundColor: Colors.white,
              fontSize: 28);
        } else if (direction == CardSwiperDirection.left) {
          Fluttertoast.showToast(
            gravity: ToastGravity.CENTER_LEFT,
            msg: ' 🥲 ',
            backgroundColor: Colors.white,
            fontSize: 28,
          );
        }
        return true;
      },
    ),
  );
}

// pass , like button

Widget passLikeButton({required CardController controller}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      IconButton(
        onPressed: () {
          controller.swiperController.swipe(CardSwiperDirection.left);
        },
        icon: Icon(Icons.cancel,
            size: 60.w, color: Colors.grey.withValues(alpha: 0.9)),
      ),
      IconButton(
        onPressed: () {
          controller.swiperController.swipe(CardSwiperDirection.right);
        },
        icon: Icon(
          Icons.favorite,
          size: 60.w,
          color: Colors.red,
        ),
      ),
    ],
  );
}
