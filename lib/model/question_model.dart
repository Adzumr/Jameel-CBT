class QuestionsModel {
  final List<Questions>? questions;

  QuestionsModel({
    this.questions,
  });

  QuestionsModel.fromJson(Map<String, dynamic> json)
      : questions = (json['questions'] as List?)
            ?.map((dynamic e) => Questions.fromJson(e as Map<String, dynamic>))
            .toList();

  Map<String, dynamic> toJson() =>
      {'questions': questions?.map((e) => e.toJson()).toList()};
}

class Questions {
  final String? question;
  final List<String>? options;
  final String? answer;
  final String? isImage;

  Questions({
    this.question,
    this.options,
    this.answer,
    this.isImage,
  });

  Questions.fromJson(Map<String, dynamic> json)
      : question = json['question'] as String?,
        options = (json['options'] as List?)
            ?.map((dynamic e) => e as String)
            .toList(),
        answer = json['answer'] as String?,
        isImage = json['isImage'] as String?;

  Map<String, dynamic> toJson() => {
        'question': question,
        'options': options,
        'answer': answer,
        'isImage': isImage
      };
}
