import 'package:cbt_test/controller/data_helper.dart';
import 'package:cbt_test/route_configuration/route_names.dart';
import 'package:cbt_test/utils/app_colors.dart';
import 'package:cbt_test/utils/app_fonts.dart';
import 'package:cbt_test/view/widgets/app_text_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/questions_controller.dart';
import '../../utils/enums.dart';
import '../widgets/app_elevated_button.dart';

class ExamsScreen extends StatefulWidget {
  const ExamsScreen({super.key});

  @override
  State<ExamsScreen> createState() => _ExamsScreenState();
}

class _ExamsScreenState extends State<ExamsScreen> {
  final questionController = Get.put(QuestionsController());
  Future getData() async {
    await questionController.fetchQuestion();
  }

  final selectedOption = ValueNotifier<Options?>(null);
  final PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView.builder(
          controller: pageController,
          physics: const NeverScrollableScrollPhysics(),
          allowImplicitScrolling: false,
          onPageChanged: (value) {
            selectedOption.value = null;
            debugPrint("Page Changed: $value");
          },
          itemCount: DataHelper.jameelQuestionsBank.length,
          itemBuilder: (context, index) {
            final question = DataHelper.jameelQuestionsBank[index];

            /// Jameel CBT
            return Container(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Center(
                    child: Text(
                      "${questionController.questionCount! + 1}/${DataHelper.jameelQuestionsBank.length}",
                      style: AppFonts.subHeadingStyle,
                    ),
                  ),
                  Center(
                    child: Text(
                      "CBT Exams",
                      style: AppFonts.subHeadingStyle,
                    ),
                  ),
                  const SizedBox(height: 40),
                  ValueListenableBuilder(
                    valueListenable: selectedOption,
                    builder:
                        (BuildContext context, dynamic value, Widget? child) {
                      return Expanded(
                        child: SingleChildScrollView(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "${question.question}",
                                  style: AppFonts.titleStyle,
                                ),
                                const SizedBox(height: 20),
                                question.isImage != null
                                    ? Image.asset(
                                        question.isImage!,
                                        height: 150,
                                        width: 150,
                                        fit: BoxFit.contain,
                                      )
                                    : const SizedBox.shrink(),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "a.",
                                      style: AppFonts.bodyStyle.copyWith(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    AppTextButton(
                                      title:
                                          question.options![0].capitalizeFirst,
                                      backgroundColor: value == Options.a
                                          ? AppColors.purpleBlue.withOpacity(.5)
                                          : Colors.transparent,
                                      onPressed: value != null
                                          ? null
                                          : () async {
                                              questionController.checkAns(
                                                questionAnswer: question.answer,
                                                selectedAns:
                                                    question.options![0],
                                              );
                                            },
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 10),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "b.",
                                      style: AppFonts.bodyStyle.copyWith(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    AppTextButton(
                                      title:
                                          question.options![1].capitalizeFirst,
                                      backgroundColor: value == Options.b
                                          ? AppColors.purpleBlue.withOpacity(.5)
                                          : Colors.transparent,
                                      onPressed: value != null
                                          ? null
                                          : () {
                                              questionController.checkAns(
                                                questionAnswer: question.answer,
                                                selectedAns:
                                                    question.options![1],
                                              );
                                            },
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 10),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "c.",
                                      style: AppFonts.bodyStyle.copyWith(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    AppTextButton(
                                      title:
                                          question.options![2].capitalizeFirst,
                                      backgroundColor: value == Options.c
                                          ? AppColors.purpleBlue.withOpacity(.5)
                                          : Colors.transparent,
                                      onPressed: value != null
                                          ? null
                                          : () {
                                              questionController.checkAns(
                                                questionAnswer: question.answer,
                                                selectedAns:
                                                    question.options![2],
                                              );
                                            },
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 10),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "d.",
                                      style: AppFonts.bodyStyle.copyWith(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    AppTextButton(
                                      title:
                                          question.options![3].capitalizeFirst,
                                      backgroundColor: value == Options.d
                                          ? AppColors.purpleBlue.withOpacity(.5)
                                          : Colors.transparent,
                                      onPressed: value != null
                                          ? null
                                          : () async {
                                              questionController.checkAns(
                                                questionAnswer: question.answer,
                                                selectedAns:
                                                    question.options![3],
                                              );
                                            },
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      questionController.questionCount! != 0
                          ? const SizedBox.shrink()
                          : AppTextButton(
                              title: "Back",
                              onPressed: () {
                                Get.to(Get.toNamed(AppRouteNames.home));
                              },
                            ),
                      AppElevatedButton(
                        title: "Next",
                        onPressed: () async {
                          questionController.incrementCounter();
                          questionController.questionCount! ==
                                  DataHelper.jameelQuestionsBank.length
                              ? Get.to(Get.toNamed(AppRouteNames.result))
                              : pageController.nextPage(
                                  duration: const Duration(
                                    milliseconds: 400,
                                  ),
                                  curve: Curves.easeInOut,
                                );
                        },
                      )
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
