import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:cbt_test/model/question_model.dart';
import 'package:flutter/services.dart';
import 'package:get/route_manager.dart';
import 'package:get/state_manager.dart';

class QuestionsController extends GetxController {
  QuestionsModel? questionsModel;
  RxBool? isLoading = false.obs;

  int? questionCount = 0;
  int? correctAns = 0;
  int? incorrectAns = 0;

  /// This method is used to fetch the questions from the json file
  /// and return the [QuestionsModel] object
  ///
  Future<QuestionsModel> fetchQuestion() async {
    try {
      String jsonString = await rootBundle.loadString('assets/questions.json');
      Map<String, dynamic> jsonData = jsonDecode(jsonString);
      questionsModel = QuestionsModel.fromJson(jsonData);
      log("Question: ${questionsModel!.questions!.length}");
    } on SocketException catch (e) {
      Get.snackbar(
        "Error",
        "$e",
      );
      log("SocketException: $e");
    } on HttpException catch (e) {
      Get.snackbar(
        "Error",
        "$e",
      );
      log("HttpException: $e");
    } on FormatException catch (e) {
      Get.snackbar(
        "Error",
        "$e",
      );
      log("FormatException: $e");
    } catch (e) {
      Get.snackbar(
        "Error",
        "$e",
      );
      log("Exception: $e");
    } finally {
      isLoading!.value = false;
    }
    return questionsModel!;
  }

  /// This method is used to check if the selected answer is correct or not
  /// and show a snackbar with the result
  void checkAns({String? questionAnswer, String? selectedAns}) {
    if (questionAnswer! == selectedAns!) {
      correctAns = correctAns! + 1;

      Get.snackbar(
        "Congraulation",
        "Your answer is correct",
        duration: const Duration(milliseconds: 900),
      );
    } else {
      incorrectAns = incorrectAns! + 1;
      Get.snackbar(
        "Sorry",
        "Your answer is incorrect",
        duration: const Duration(milliseconds: 900),
      );
    }
  }

  /// This method is used to reset the question count and correct and incorrect
  ///
  Future resetCounter() async {
    questionCount = 0;
    correctAns = 0;
    incorrectAns = 0;
  }

  Future incrementCounter() async {
    questionCount = questionCount! + 1;
  }
}
