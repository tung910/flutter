List<TodoEntity> todoList = <TodoEntity>[
  TodoEntity(
      priority: Priority.high,
      title: 'Rua Bat',
      description:
          'Supporting line text lorem ipsum dolor sit amet, consectetur,'),
  TodoEntity(
      priority: Priority.low,
      title: 'Quet Nha',
      description:
          'Supporting line text lorem ipsum dolor sit amet, consectetur,'),
];

enum Priority { high, medium, low }

class TodoEntity {
  TodoEntity({
    this.id,
    required this.priority,
    required this.title,
    required this.description,
  });

  final int? id;

  final Priority priority;
  final String title;
  final String description;
}
