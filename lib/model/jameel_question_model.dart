class JameelQuestionModel {
  final String? question;
  final List<String>? options;
  final String? answer;
  final String? isImage;

  JameelQuestionModel({
    this.question,
    this.options,
    this.answer,
    this.isImage,
  });

  JameelQuestionModel.fromJson(Map<String, dynamic> json)
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
