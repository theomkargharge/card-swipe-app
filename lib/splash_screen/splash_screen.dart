import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'controller/splash_screen_controller.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashScreenController>(
      builder: (controller) {
        return Scaffold(
          body: Stack(
            children: [
              Positioned.fill(
                child: AnimatedBuilder(
                  animation: controller.animationController!,
                  builder: (context, child) {
                    return CustomPaint(
                      painter: CirclePainter(
                        progress: controller.animationController!.value,
                        listRadius: controller.listRadius,
                      ),
                    );
                  },
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Hero(
                  tag: 'cs',
                  child: Text(
                    'Card Swiper',
                    style: TextStyle(
                      fontSize: 26.sp,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}

class CirclePainter extends CustomPainter {
  final double progress;
  final List<int> listRadius;

  CirclePainter({required this.progress, required this.listRadius});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.pinkAccent.withOpacity(0.3)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 200.0;

    // Draw circles with different radii.
    for (final radius in listRadius) {
      final animatedRadius = radius + (radius * progress);
      canvas.drawCircle(size.center(Offset.zero), animatedRadius, paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
