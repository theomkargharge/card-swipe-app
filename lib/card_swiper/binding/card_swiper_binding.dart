
import 'package:get/get.dart';

import '../controller/card_swiper_controller.dart';

class CardSwiperBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CardController());
  }
}
