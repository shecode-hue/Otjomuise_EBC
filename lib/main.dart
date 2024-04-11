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
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/hymnTabs': (context) => HymnTabs(),
        '/grc' : (context) => GRC(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(16.0),
            child: const Column(
              children: [
                Text(
                  'Let everything that has breath praise the LORD. Praise the LORD.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    fontStyle: FontStyle.italic, // Make text italic
                  ),
                ),
                Text(
                  ' \n Psalm 150:6',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    // Keep Psalm part bold
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Image.asset(
              'images/logo.jpeg', // Replace 'your_image.png' with your image asset path
              height: 300, // Adjust the height of the image
                width: MediaQuery.of(context).size.width *
                  0.9, // 90% width of the screen
            ),
          ),
          Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width *
                  0.9, // 90% width of the screen
              height: MediaQuery.of(context).size.height *
                  0.1, // 10% height of the screen
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => HymnTabs()));
                },
                icon: const Icon(Icons.music_note), // Music icon
                label: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Hymnal'),
                    Icon(Icons.chevron_right), // Forward angle icon
                  ],
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 16.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width *
                  0.9, // 90% width of the screen
              height: MediaQuery.of(context).size.height *
                  0.1, // 10% height of the screen
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => GRC()));
                },
                icon: const Icon(Icons.people), // Music icon
                label: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Great Revelation Choir'),
                    Icon(Icons.chevron_right), // Forward angle icon
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HymnTabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.pop(context);
        return false;
      },
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/');
              },
            ),
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

class GRC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/');
          },
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(right: 16 , left: 16, bottom: 16),
            child: const Column(
              children: [
                Text(
                  'Great Revelation Choir',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 27,
                     fontWeight: FontWeight.bold, // Make text italic
                  ),
                ),
                Text(
                  'Media Gallery',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    // Keep Psalm part bold
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Image.asset(
              'images/WhatsApp Image 2024-04-11 at 13.24.25.jpeg', // Replace 'your_image.png' with your image asset path
              height: 300, // Adjust the height of the image
                 width: MediaQuery.of(context).size.width *
                  0.9, // 90% width of the screen
            ),
          ),
          Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width *
                  0.9, // 90% width of the screen
              height: MediaQuery.of(context).size.height *
                  0.1, // 10% height of the screen
              child: ElevatedButton.icon(
                onPressed: () {
                 
                   
                },
                icon: const Icon(Icons.music_note), // Music icon
                label: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Songs'),
                    Icon(Icons.chevron_right), // Forward angle icon
                  ],
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 16.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width *
                  0.9, // 90% width of the screen
              height: MediaQuery.of(context).size.height *
                  0.1, // 10% height of the screen
              child: ElevatedButton.icon(
                onPressed: () {
                  
                },
                icon: const Icon(Icons.camera), // Music icon
                label: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Photo Album'),
                    Icon(Icons.chevron_right), // Forward angle icon
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
