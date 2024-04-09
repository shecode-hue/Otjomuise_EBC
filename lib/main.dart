import 'package:flutter/material.dart';
import 'package:otjiomuise_hymn/pages/ChokweSongs.dart';
import 'package:otjiomuise_hymn/pages/EnglishSongs.dart';
import 'package:otjiomuise_hymn/pages/NgangelaSongs.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('EBC Hymnal'),
            bottom: const TabBar(
              tabs: [
                Tab(text: 'Ngangela'),
                Tab(text: 'Chokwe'),
                Tab(text: 'English'),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              // Ngangela tab content
              NgangelaSongs(),
              // Chokwe tab content
              ChokweSongs(),
              // English tab content
              EnglishSongs(),
            ],
          ),
        ),
      ),
    );
  }
}



