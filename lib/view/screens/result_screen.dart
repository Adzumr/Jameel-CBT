import 'package:cbt_test/route_configuration/route_names.dart';
import 'package:cbt_test/utils/app_colors.dart';
import 'package:cbt_test/utils/app_fonts.dart';
import 'package:cbt_test/view/widgets/app_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/questions_controller.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final questionsController = Get.find<QuestionsController>();
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Test Results",
                textAlign: TextAlign.center,
                style: AppFonts.headingStyle.copyWith(
                  color: AppColors.purpleBlue,
                ),
              ),
              Text(
                "Congratulations! You have completed the test",
                textAlign: TextAlign.center,
                style: AppFonts.subHeadingStyle.copyWith(
                  color: AppColors.purpleBlue,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    "Here are your results:",
                    textAlign: TextAlign.center,
                    style: AppFonts.subHeadingStyle.copyWith(
                      color: AppColors.purpleBlue,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    "Total Questions: ${questionsController.questionCount}",
                    textAlign: TextAlign.center,
                    style: AppFonts.titleStyle.copyWith(
                      color: AppColors.blackColor,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "Correct Answers: ${questionsController.correctAns}",
                    textAlign: TextAlign.center,
                    style: AppFonts.titleStyle.copyWith(
                      color: AppColors.blackColor,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "Incorrect Answers: ${questionsController.incorrectAns}",
                    textAlign: TextAlign.center,
                    style: AppFonts.titleStyle.copyWith(
                      color: AppColors.blackColor,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "Percentage: ${questionsController.correctAns! / questionsController.questionCount! * 100}%",
                    textAlign: TextAlign.center,
                    style: AppFonts.titleStyle.copyWith(
                      color: AppColors.blackColor,
                    ),
                  ),
                ],
              ),
              AppElevatedButton(
                title: "Home",
                onPressed: () async {
                  await questionsController.resetCounter();

                  Get.offAllNamed(AppRouteNames.home);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
