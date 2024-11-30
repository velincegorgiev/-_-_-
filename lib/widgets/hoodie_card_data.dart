import 'package:flutter/material.dart';

class HoodieCardData extends StatelessWidget{
  final String image;
  final String name;
  final String description;

  const HoodieCardData({super.key,required this.name,required this.image, required this.description});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(child: Image.network(image, fit: BoxFit.contain, alignment: Alignment.bottomRight)),
        const Divider(),
        Text("${name[0].toUpperCase()}${name.substring(1)}",
          style: const TextStyle(fontSize: 21, color: Colors.black),
        ),
      ],
    );
  }
}