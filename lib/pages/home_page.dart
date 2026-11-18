import 'package:first_project/data/mock_data.dart';
import 'package:first_project/pages/lesson_page.dart';
import 'package:first_project/widgets/section_header.dart';
import 'package:material_ui/material_ui.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final current = mockCourses.firstWhere(
      (c) => c.progress > 0 && c.progress < 1,
    );
    final nextIndex = (current.progress * current.lessonCount).floor();
    final nextLesson = current.lessons[nextIndex];
    final colors = Theme.of(context).colorScheme;
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(16),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Merhaba Ahmet',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                IconButton(
                  icon: Icon(Icons.notifications_outlined),
                  onPressed: () {},
                ),
              ],
            ),

            SizedBox(height: 24),

            Text(
              'KALDIĞIN YERDEN DEVAM ET',
              style: TextStyle(
                color: colors.primary,
                letterSpacing: 1.2,
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 8),

            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        LessonPage(course: current, index: nextIndex),
                  ),
                );
              },

              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: AspectRatio(
                  aspectRatio: 16 / 9,
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [colors.primary, colors.tertiary],
                            ),
                          ),
                        ),
                      ),

                      Center(
                        child: CircleAvatar(
                          radius: 32,
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.play_arrow,
                            size: 40,
                            color: colors.primary,
                          ),
                        ),
                      ),

                      Positioned(
                        left: 12,
                        bottom: 12,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 4,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.black54,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text(
                            '${nextLesson.durationMinutes} dk',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            SizedBox(height: 8),

            Text(
              '${current.title} · Ders ${nextIndex + 1} / ${current.lessonCount}',
              style: TextStyle(color: Colors.grey, fontSize: 13),
            ),
            SizedBox(height: 4),
            Text(
              nextLesson.title,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            LinearProgressIndicator(
              value: current.progress,
              minHeight: 6,
              borderRadius: BorderRadius.circular(8),
            ),

            SizedBox(height: 24),

            SectionHeader(title: 'Sıradaki Dersler'),

            for (int i = nextIndex + 1; i < current.lessonCount; i++)
              ListTile(
                title: Text(current.lessons[i].title),
                leading: CircleAvatar(child: Text('${i + 1}')),
                trailing: Text('${current.lessons[i].durationMinutes} dk'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          LessonPage(course: current, index: i),
                    ),
                  );
                },
              ),
          ],
        ),
      ),
    );
  }
}
