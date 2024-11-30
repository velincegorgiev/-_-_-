import 'package:flutter/material.dart';

class DetailTitle extends StatelessWidget{

  final String name;

  const DetailTitle({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Chip(backgroundColor: Colors.white,
      label: Text("${name[0].toUpperCase()}${name.substring(1)}",
        style: const TextStyle(fontSize: 24,color: Colors.black),
      ),
    );
  }
}