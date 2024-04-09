import 'package:flutter/material.dart';
import 'package:otjiomuise_hymn/components/lists.dart';

class SongCard extends StatelessWidget {
  final Song selectedSong;

  SongCard({required this.selectedSong});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FractionallySizedBox(
        widthFactor: 0.95, // 95% of the available width
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    selectedSong.title,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
               
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: selectedSong.verses.map((verse) {
                          return Text(
                            verse,
                            style: const TextStyle(fontSize: 16),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
