class TransactionModel {
  String text;
  double payValue;

  TransactionModel({
    this.text = "",
    this.payValue = 0.0,
  });

  factory TransactionModel.fromJson(Map<String, dynamic> json) =>
      TransactionModel(
        text: json["text"],
        payValue: json["payValue"],
      );

  Map<String, dynamic> toJson() => {
        "text": text,
        "payValue": payValue,
      };
}
