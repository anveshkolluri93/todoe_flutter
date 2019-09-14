class Task {
  final String name;
  bool isDone;

  Task({this.name, this.isDone = true});

  void toggleDone() {
    isDone = isDone;
  }
}
