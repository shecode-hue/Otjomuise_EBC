import 'package:flutter/material.dart';

class ChokweSongs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Map<String, String> chokweSongs = {
      'TUHALISENU MWE ZAMBI': '''
Tuhalisenu mwe Zambi,
Mukwa kusolola vumbi;
Tata, tumuhalisenu,
Ni Mwana ni mwe Spiritu.''',
      // Add more Chokwe songs here...
    };

    return ListView.builder(
      itemCount: chokweSongs.length,
      itemBuilder: (context, index) {
        final songTitle = chokweSongs.keys.elementAt(index);
        return ListTile(
          title: Text(songTitle),
          onTap: () {
            _showLyrics(context, chokweSongs[songTitle]!, songTitle);
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
