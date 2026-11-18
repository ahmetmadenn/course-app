import 'package:first_project/models/course.dart';
import 'package:material_ui/material_ui.dart';

class LessonPage extends StatelessWidget {
  const LessonPage({super.key, required this.course, required this.index});
  final Course course;
  final int index;
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    final lesson = course.lessons[index];
    return Scaffold(
      appBar: AppBar(title: Text(course.title)),
      body: ListView(
        children: [
          AspectRatio(
            aspectRatio: 16 / 9,
            child: Container(
              color: Colors.black,
              child: Center(
                child: Icon(
                  Icons.play_circle_fill,
                  color: Colors.white,
                  size: 64,
                ),
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.all(16),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Ders ${index + 1} / ${course.lessonCount}',
                  style: TextStyle(color: colors.primary),
                ),

                SizedBox(height: 8),

                Text(
                  lesson.title,
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),

                SizedBox(height: 8),

                Row(
                  children: [
                    Icon(Icons.schedule, size: 16),
                    SizedBox(width: 4),
                    Text('${lesson.durationMinutes} dk '),
                  ],
                ),

                SizedBox(height: 24),

                Row(
                  children: [
                    Expanded(
                      child: OutlinedButton(
                        onPressed: index == 0
                            ? null
                            : () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => LessonPage(
                                      course: course,
                                      index: index - 1,
                                    ),
                                  ),
                                );
                              },
                        child: Text('Önceki'),
                      ),
                    ),
                    SizedBox(width: 12),
                    Expanded(
                      child: FilledButton(
                        onPressed: index == course.lessonCount - 1
                            ? null
                            : () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => LessonPage(
                                      course: course,
                                      index: index + 1,
                                    ),
                                  ),
                                );
                              },
                        child: Text('Sonraki'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
