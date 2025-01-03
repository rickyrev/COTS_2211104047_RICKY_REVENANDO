import 'package:cots_/modules/onboarding/view/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'onboarding_controller.dart';

class OnboardingPage extends StatelessWidget {
  final OnboardingController controller = Get.put(OnboardingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        return controller.isOnboardingCompleted.value
            ? Center(child: Text('Onboarding Completed'))
            : Center(
                child: ElevatedButton(
                  onPressed: () {
                    controller.completeOnboarding();
                  },
                  child: Text('Complete Onboarding'),
                ),
              );
      }),
    );
  }
}
