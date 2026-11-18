import 'package:first_project/data/mock_data.dart';
import 'package:first_project/widgets/course_card.dart';
import 'package:material_ui/material_ui.dart';

class CoursesPage extends StatelessWidget {
  const CoursesPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Kurslarım')),

      body: ListView.builder(
        itemBuilder: (context, index) {
          return CourseCard(course: mockCourses[index]);
        },
        padding: EdgeInsets.all(16),
        itemCount: mockCourses.length,
      ),
    );
  }
}
