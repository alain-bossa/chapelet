import 'package:desktop_window/desktop_window.dart';
import 'package:flutter/material.dart';
import 'common/route_generator.dart';
import 'common/theme_helper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // if (io.Platform.isWindows) {
  DesktopWindow.setWindowSize(const Size(830, 1400));
  //   //DesktopWindow.setFullScreen(true);
  // }
  runApp(const QuizApp());
}

class QuizApp extends StatelessWidget {
  const QuizApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Réciter le Chapelet',
      theme: ThemeHelper.getThemeData(),
      debugShowCheckedModeBanner:
          false, // enlève la bannière debug sur l'application
      initialRoute: "/home",
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
