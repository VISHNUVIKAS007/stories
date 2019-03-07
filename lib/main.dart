import 'data.dart';
import 'detail.dart';
import 'package:flutter/material.dart';
import 'home.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Stories App',
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        platform: TargetPlatform.iOS,
        primarySwatch: Colors.red,
        accentColor: Colors.white,
      ),
      home: Home(),
      onGenerateRoute: (settings) => generateRoute(settings),
    );
  }

  ///Generate parameterized route --> e.g: detail/some book title
  generateRoute(RouteSettings settings) {
    final path = settings.name.split('/');
    final title = path[1];

    Stories stories = story.firstWhere((it) => it.title == title);
    return MaterialPageRoute(
      settings: settings,
      builder: (context) => Detail(stories),
    );
  }
}