
import 'package:card_swipe/card_swiper/card_swiper.dart';
import 'package:card_swipe/splash_screen/binding/splash_screen_binding.dart';
import 'package:card_swipe/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'card_swiper/binding/card_swiper_binding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Card Swipe',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
            textTheme:
                GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
          ),
          initialBinding: CardSwiperBinding(),
          initialRoute: "/",
          getPages: [
             GetPage(
              name: '/',
              page: () => SplashScreen(),
              binding: SplashScreenBinding(),
            ),
            GetPage(
              name: '/card',
              page: () => CardSwiperScreen(),
              binding: CardSwiperBinding(),
            )
          ],
        );
      },
    );
  }
}
