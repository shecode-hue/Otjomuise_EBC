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
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 6, // You can adjust the number of columns here
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
                style: const TextStyle(fontSize: 24),
              ),
            ),
          ),
        );
      },
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
        title: Text(selectedSong.title),
      ),
      body: SongCard(selectedSong: selectedSong),
    );
  }
}
