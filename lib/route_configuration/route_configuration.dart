import 'package:cbt_test/view/screens/course_screen.dart';
import 'package:get/get.dart';

import '../view/screens/exam_screen.dart';
import '../view/screens/home_screen.dart';
import '../view/screens/result_screen.dart';
import 'route_names.dart';

class AppRoutesConfiguration {
  static List<GetPage> routes = [
    GetPage(
      name: '/${AppRouteNames.home}',
      page: () => const HomeScreen(),
    ),
    GetPage(
      name: '/${AppRouteNames.course}',
      page: () => const CourseScreen(),
    ),
    GetPage(
      name: '/${AppRouteNames.exam}',
      page: () => const ExamsScreen(),
    ),
    GetPage(
      name: '/${AppRouteNames.result}',
      page: () => const ResultScreen(),
    ),
  ];
}
