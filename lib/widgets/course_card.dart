import 'package:first_project/models/course.dart';
import 'package:first_project/pages/course_detail_page.dart';
import 'package:material_ui/material_ui.dart';

class CourseCard extends StatelessWidget {
  const new({super.key, required this.course});
  final Course course;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CourseDetailPage(course: course),
            ),
          );
        },

        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                course.title,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 4),
              Text('${course.instructor} · ${course.lessonCount} ders'),
              SizedBox(height: 12),
              LinearProgressIndicator(
                value: course.progress,
                minHeight: 6,
                borderRadius: BorderRadius.circular(8),
              ),
              SizedBox(height: 4),

              Text('%${(course.progress * 100).toInt()} tamamlandı'),
            ],
          ),
        ),
      ),
    );
  }
}
