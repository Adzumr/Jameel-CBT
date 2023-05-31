import 'package:cbt_test/controller/questions_controller.dart';
import 'package:cbt_test/route_configuration/route_names.dart';
import 'package:cbt_test/utils/app_fonts.dart';
import 'package:cbt_test/view/widgets/app_elevated_button.dart';
import 'package:cbt_test/view/widgets/app_text_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final questionsController = Get.put(QuestionsController());
    Future getData() async {
      await questionsController.fetchQuestion();
    }

    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Container(
          height: screenSize.height,
          padding: const EdgeInsets.all(40),
          child: FutureBuilder(
            future: getData(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator.adaptive(),
                );
              } else {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox.shrink(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Center(
                          child: Text(
                            "Welcome to our Computer-Based Testing (CBT) software!",
                            textAlign: TextAlign.center,
                            style: AppFonts.titleStyle,
                          ),
                        ),
                        const SizedBox(height: 20),
                        Center(
                          child: Text(
                            "We're excited to have you join us as we "
                            "embark on this journey to create an innovative "
                            "solution for student testing.",
                            textAlign: TextAlign.center,
                            style: AppFonts.bodyStyle.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(height: 50),
                        Center(
                          child: Text(
                            "Our goal is to create a platform that not only makes testing easier and more efficient, "
                            "but also provides a personalized learning experience for each student. "
                            "We want to help you achieve your academic goals, and we believe that our CBT software can play a key role in making that happen.",
                            textAlign: TextAlign.center,
                            style: AppFonts.bodyStyle,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppTextButton(
                          title: "Course",
                          onPressed: () {
                            Get.toNamed(AppRouteNames.course);
                          },
                        ),
                        AppElevatedButton(
                          onPressed: () {
                            Get.toNamed(AppRouteNames.exam);
                          },
                          title: "Test",
                        )
                      ],
                    )
                  ],
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
