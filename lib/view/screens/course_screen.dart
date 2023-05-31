import 'package:cbt_test/controller/data_helper.dart';
import 'package:cbt_test/utils/app_fonts.dart';
import 'package:cbt_test/view/widgets/app_elevated_button.dart';
import 'package:cbt_test/view/widgets/app_text_button.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import '../../route_configuration/route_names.dart';
import '../../utils/app_colors.dart';

class CourseScreen extends StatelessWidget {
  const CourseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppTextButton(
                    title: "Back",
                    onPressed: () {
                      Get.back();
                    },
                  ),
                  Text(
                    "Lesson Plan",
                    style: AppFonts.subHeadingStyle,
                  ),
                  AppElevatedButton(
                    title: "Take Test",
                    onPressed: () {
                      Get.toNamed(AppRouteNames.exam);
                    },
                  )
                ],
              ),
              const SizedBox(height: 40),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const HeadingWidget(
                        type: "Subject",
                        content: "CHEMISTRY",
                      ),
                      const HeadingWidget(
                        type: "Class",
                        content: "SSS III",
                      ),
                      const HeadingWidget(
                        type: "Duration",
                        content: "40 Mins",
                      ),
                      const HeadingWidget(
                        type: "Age range",
                        content: "14-18 years",
                      ),
                      const HeadingWidget(
                        type: "Sex",
                        content: "Mix (male & female)",
                      ),
                      const HeadingWidget(
                        type: "Instructional material",
                        content: "Computers, projector and lesson note",
                      ),
                      const HeadingWidget(
                        type: "Previous knowledge",
                        content: "",
                      ),
                      HeadingWidget(
                        type: "Behavioral objectives",
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: List.generate(
                              DataHelper.behavioralObjectivestives.length,
                              (index) {
                            final objective =
                                DataHelper.behavioralObjectivestives[index];
                            return Row(
                              children: [
                                Text(
                                  "${index + 1}.",
                                  style: AppFonts.bodyStyle,
                                ),
                                const SizedBox(width: 5),
                                Text(
                                  objective,
                                  style: AppFonts.bodyStyle.copyWith(
                                    color: AppColors.blackColor,
                                  ),
                                ),
                              ],
                            );
                          }),
                        ),
                      ),
                      const HeadingWidget(
                        type: "Instruction",
                        content:
                            "The teacher introduces the less by defining the term; Aromatic hydrocarbon as a group of benzene and its derivatives, the term aromatic was first used to describe a group of compounds which have a pleasant smell. Benzene has the molecular formula C6H6 i.e. it has six carbon atoms and six hydrogen.",
                      ),
                      HeadingWidget(
                        type: "Presentation",
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text(
                              "The teacher presents the topic in the following steps:",
                              style: AppFonts.bodyStyle,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: List.generate(
                                  DataHelper.presentationSteps.length, (index) {
                                final step =
                                    DataHelper.presentationSteps[index];
                                return Text(
                                  step,
                                  overflow: TextOverflow.visible,
                                  style: AppFonts.bodyStyle.copyWith(
                                    color: AppColors.blackColor,
                                  ),
                                );
                              }),
                            )
                          ],
                        ),
                      ),
                      const HeadingWidget(
                        type: "Conclusion",
                        content:
                            "The teacher summarizes the lesson taught at that particular period i.e. aromatic hydrocarbon is a group of benzene and its derivatives, it has some structures which was drawn on the board, and it has molecular formulas.",
                      ),
                      HeadingWidget(
                        type: "Evaluation",
                        child: Column(
                          children: [
                            Text(
                              "The teacher evaluates the class by asking the following questions:",
                              style: AppFonts.bodyStyle,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: List.generate(
                                  DataHelper.questions.length, (index) {
                                final question = DataHelper.questions[index];
                                return Text(
                                  question,
                                  style: AppFonts.bodyStyle,
                                );
                              }),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // const SizedBox(height: 20),
              // AppElevatedButton(
              //   title: "Take Test",
              // onPressed: () {
              //   Get.toNamed(AppRouteNames.exam);
              // },
              // )
            ],
          ),
        ),
      ),
    );
  }
}

class HeadingWidget extends StatelessWidget {
  const HeadingWidget({
    super.key,
    this.content,
    this.child,
    required this.type,
  });

  final String? type, content;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: screenSize.width * .15,
            child: Text(
              "$type: ",
              style: AppFonts.bodyStyle.copyWith(
                color: AppColors.purpleBlue,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Flexible(
            child: child ??
                Text(
                  "$content",
                  overflow: TextOverflow.visible,
                  style: AppFonts.bodyStyle.copyWith(
                    color: AppColors.blackColor,
                  ),
                ),
          ),
        ],
      ),
    );
  }
}

class ArticleWidget extends StatelessWidget {
  final String? title;
  final String? content;
  const ArticleWidget({
    this.title,
    this.content,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          "$title",
          style: AppFonts.titleStyle.copyWith(color: AppColors.blackColor),
        ),
        const SizedBox(height: 10),
        Text(
          "$content",
          style: AppFonts.bodyStyle,
        ),
        const SizedBox(height: 40),
      ],
    );
  }
}
