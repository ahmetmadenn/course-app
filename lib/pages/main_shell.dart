import 'package:first_project/pages/courses_page.dart';
import 'package:material_ui/material_ui.dart';

import 'profile_page.dart';
import 'home_page.dart';

class MainShell extends StatefulWidget {
  const MainShell({super.key});

  @override
  State<MainShell> createState() => _MainShellState();
}

class _MainShellState extends State<MainShell> {
  int selectedIndex = 0;
  final pages = [const HomePage(), const CoursesPage(), const ProfilePage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        selectedIndex: selectedIndex,
        onDestinationSelected: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'Ana Sayfa'),
          NavigationDestination(
            icon: Icon(Icons.menu_book),
            label: 'Kurslarım',
          ),
          NavigationDestination(icon: Icon(Icons.person), label: 'Profilim'),
        ],
      ),
      body: pages[selectedIndex],
    );
  }
}
