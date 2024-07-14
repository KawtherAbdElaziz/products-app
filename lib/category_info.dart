import 'package:flutter/material.dart';

class CategoryInfo extends StatelessWidget {
  final String title;
  final String text;
  final String price;
  final String discount;
  final String review;

  const CategoryInfo({
    super.key,
    required this.title,
    required this.text,
    required this.price,
    required this.discount,
    required this.review,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 6, top: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(color: Colors.black),
          ),
          Text(
            text,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(color: Colors.black),
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Text(price),
              const SizedBox(width: 15),
              Text(
                discount,
                style: const TextStyle(
                  fontSize: 10,
                  color: Color.fromARGB(255, 158, 166, 170),
                  decoration: TextDecoration.lineThrough,
                  decorationColor: Color.fromARGB(255, 6, 59, 102),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                review,
                style: const TextStyle(color: Colors.black, fontSize: 15),
              ),
              const SizedBox(width: 2),
              const Icon(
                Icons.star,
                color: Colors.amber,
                size: 20,
              ),
              const Spacer(),
              IconButton(
                onPressed: () {
                  // Add your onPressed logic here
                },
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                icon: const Icon(Icons.add_circle),
                color: const Color.fromARGB(255, 5, 51, 88),
                iconSize: 32,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
