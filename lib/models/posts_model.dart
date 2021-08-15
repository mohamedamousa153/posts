class MessageBody {
  MessageBody({
    this.userId,
    this.id,
    this.title,
    this.body,
  });

  int userId;
  int id;
  String title;
  String body;

  factory MessageBody.fromJson(Map<String, dynamic> json) => MessageBody(
    userId: json["userId"],
    id: json["id"],
    title: json["title"],
    body: json["body"],
  );

  // Map<String, dynamic> toJson() => {
  //   "userId": userId,
  //   "id": id,
  //   "title": title,
  //   "body": body,
  // };
}