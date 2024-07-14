import 'package:flutter/material.dart';
import 'iconbutton.dart'; // Make sure to import FavoriteButton or IconButton accordingly

class StackCard extends StatelessWidget {
  final String path;

  const StackCard({super.key, required this.path});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.vertical(top: Radius.circular(15)),
          child: Image.network(
            path,
            height: 140,
            width: 200,
            fit: BoxFit.cover,
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(5.0),
          child: FavoriteButton(), // Replace with your IconButton or FavoriteButton widget
        ),
      ],
    );
  }
}
