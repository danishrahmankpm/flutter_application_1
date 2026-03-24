class TodoEntity {
  final int userId;
  final int id;
  final String? title;
  final bool? completed;

  TodoEntity({
    required this.userId,
    required this.id,
    this.title,
    this.completed,
  });


}