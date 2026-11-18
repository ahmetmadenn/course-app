import 'lesson.dart';

class Course {
  final String id;
  final String title;
  final String instructor;
  final String description;
  final double progress;
  final List<Lesson> lessons;
  int get lessonCount => lessons.length;

  Course({
    required this.id,
    required this.title,
    required this.instructor,
    required this.description,
    required this.progress,
    required this.lessons,
  });
}
