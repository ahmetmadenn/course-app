import 'package:first_project/models/course.dart';
import 'package:first_project/pages/lesson_page.dart';
import 'package:first_project/widgets/section_header.dart';
import 'package:material_ui/material_ui.dart';

class CourseDetailPage extends StatelessWidget {
  const CourseDetailPage({super.key, required this.course});
  final Course course;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(title: Text(course.title)),
      body: ListView(
        padding: EdgeInsets.all(16),

        children: [
          Container(
            padding: EdgeInsets.all(16),

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              gradient: LinearGradient(
                colors: [colors.primary, colors.tertiary],
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  course.title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 12),
                Text(
                  '${course.instructor} · ${course.lessonCount} ders',
                  style: TextStyle(color: Colors.white70),
                ),
              ],
            ),
          ),
          SizedBox(height: 24),
          Text(course.description),
          SizedBox(height: 24),
          SectionHeader(title: 'Dersler'),
          for (int i = 0; i < course.lessons.length; i++)
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LessonPage(course: course, index: i),
                  ),
                );
              },
              trailing: Icon(Icons.chevron_right),
              leading: CircleAvatar(child: Icon(Icons.play_arrow)),
              title: Text(course.lessons[i].title),
              subtitle: Text('${course.lessons[i].durationMinutes} dk'),
            ),
        ],
      ),
    );
  }
}
