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
                  const SizedBox(height: 20),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: selectedSong.verses.map((verse) {
                          return Center(
                            child: Text(
                              verse,
                              style: const TextStyle(fontSize: 55,
                              fontWeight: FontWeight.w900),
                            ),
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
