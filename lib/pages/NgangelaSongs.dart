import 'package:flutter/material.dart';
import 'package:otjiomuise_hymn/components/lists.dart';
import 'package:otjiomuise_hymn/components/songcard.dart';

class NgangelaSongs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SongSelectionGrid(),
      ),
    );
  }
}

class SongSelectionGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 8, // You can adjust the number of columns here
        ),
        itemCount: ngangelaSongs.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SongDetailsPage(songIndex: index),
                ),
              );
            },
            child: Card(
              child: Center(
                child: Text(
                  ngangelaSongs[index].id.toString(),
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w800,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class SongDetailsPage extends StatelessWidget {
  final int songIndex;

  SongDetailsPage({required this.songIndex});

  @override
  Widget build(BuildContext context) {
    final selectedSong = ngangelaSongs[songIndex];

    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              selectedSong.id.toString(),
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
                Text(
              '.',
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              selectedSong.title,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      body: SongCard(selectedSong: selectedSong),
    );
  }
}
