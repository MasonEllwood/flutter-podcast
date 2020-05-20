import 'package:flutter/material.dart';
import 'package:podcast/pages/single_author_page.dart';

void main() {
  runApp(PodcastApp());
}

class PodcastApp extends StatefulWidget {
  @override
  _PodcastAppState createState() => _PodcastAppState();
}

class _PodcastAppState extends State<PodcastApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SingleAuthorPage(),
      onGenerateRoute: _getRoute,  
    );
  }

  Route _getRoute(RouteSettings settings) {
    switch (settings.name){
      case '/sinle-author':
        return _buildRoute(settings, SingleAuthorPage());
      default:
        return null;
    }
  }

  MaterialPageRoute _buildRoute(RouteSettings settings, Widget builder){
    return new MaterialPageRoute(
      settings: settings,
      builder: (BuildContext context) => builder,
    );
  }  
  
}