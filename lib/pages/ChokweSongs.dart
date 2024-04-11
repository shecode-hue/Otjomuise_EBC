import 'package:flutter/material.dart';
import 'package:otjiomuise_hymn/components/lists.dart';
import 'package:otjiomuise_hymn/components/songcard.dart';

class ChokweSongs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: SongSelectionGrid(songList: chokweSongs),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "MATAWIZO",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                Expanded(
                  child: SongSelectionGrid(songList: chokwe2Songs),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SongSelectionGrid extends StatelessWidget {
  final List<Song> songList;

  SongSelectionGrid({required this.songList});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 8, // You can adjust the number of columns here
        ),
        itemCount: songList.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      SongDetailsPage(songIndex: index, songList: songList),
                ),
              );
            },
            child: Card(
              child: Center(
                child: Text(
                 songList[index].id.toString(), 
                  style: const TextStyle(fontSize: 16),
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
  final List<Song> songList;

  SongDetailsPage({required this.songIndex, required this.songList});

  @override
  Widget build(BuildContext context) {
    final selectedSong = songList[songIndex];

    return Scaffold(
      appBar: AppBar(
        title: Text(selectedSong.title),
      ),
      body: SongCard(selectedSong: selectedSong),
    );
  }
}
