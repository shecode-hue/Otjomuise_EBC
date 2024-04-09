import 'package:flutter/material.dart';

class EnglishSongs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Map<String, String> englishSongs = {
      'BLESSED ASSURANCE': '''
Blessed assurance, Jesus is mine!
Oh, what a foretaste of glory divine!
Heir of salvation, purchase of God,
Born of His Spirit, washed in His blood.
''',
      // Add more English songs here...
    };

    return ListView.builder(
      itemCount: englishSongs.length,
      itemBuilder: (context, index) {
        final songTitle = englishSongs.keys.elementAt(index);
        return ListTile(
          title: Text(songTitle),
          onTap: () {
            _showLyrics(context, englishSongs[songTitle]!, songTitle);
          },
        );
      },
    );
  }

  void _showLyrics(BuildContext context, String lyrics, String songTitle) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(songTitle),
          content: SingleChildScrollView(
            child: Text(lyrics),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Close'),
            ),
          ],
        );
      },
    );
  }
}
