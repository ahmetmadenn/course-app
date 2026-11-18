import 'package:first_project/models/course.dart';
import 'package:first_project/models/lesson.dart';

final List<Course> mockCourses = [
  Course(
    id: 'c1',
    title: "Flutter'a Giriş",
    instructor: 'Ahmet MADEN',
    description:
        'Sıfırdan Flutter öğren: kurulum, widget mantığı ve ilk uygulamana kadar her şey.',
    progress: 0.4,
    lessons: [
      Lesson(id: 'c1-l1', title: 'Flutter nedir?', durationMinutes: 8, videoUrl: ''),
      Lesson(id: 'c1-l2', title: 'Kurulum ve ilk proje', durationMinutes: 15, videoUrl: ''),
      Lesson(id: 'c1-l3', title: 'Widget ağacı', durationMinutes: 12, videoUrl: ''),
      Lesson(id: 'c1-l4', title: 'Stateless ve Stateful', durationMinutes: 18, videoUrl: ''),
    ],
  ),
  Course(
    id: 'c2',
    title: 'Dart Temelleri',
    instructor: 'Zeynep Arslan',
    description:
        'Değişkenler, fonksiyonlar, sınıflar ve listeler: Flutter öncesi bilmen gereken Dart konuları.',
    progress: 0.0,
    lessons: [
      Lesson(id: 'c2-l1', title: 'Değişkenler ve tipler', durationMinutes: 10, videoUrl: ''),
      Lesson(id: 'c2-l2', title: 'Fonksiyonlar', durationMinutes: 14, videoUrl: ''),
      Lesson(id: 'c2-l3', title: 'Sınıflar ve nesneler', durationMinutes: 20, videoUrl: ''),
    ],
  ),
  Course(
    id: 'c3',
    title: 'Mobil UI Tasarımı',
    instructor: 'Can Öztürk',
    description:
        'Renk, tipografi ve boşluk kullanımıyla modern ve kullanıcı dostu arayüzler tasarla.',
    progress: 0.75,
    lessons: [
      Lesson(id: 'c3-l1', title: 'Renk teorisi', durationMinutes: 9, videoUrl: ''),
      Lesson(id: 'c3-l2', title: 'Tipografi', durationMinutes: 11, videoUrl: ''),
      Lesson(id: 'c3-l3', title: 'Boşluk ve hizalama', durationMinutes: 7, videoUrl: ''),
      Lesson(id: 'c3-l4', title: 'Tema oluşturma', durationMinutes: 16, videoUrl: ''),
    ],
  ),
];
